import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:k8s/src/api.dart';
import 'package:k8s/src/auth/basic_auth.dart';
import 'package:k8s/src/auth/bearer_auth.dart';
import 'package:k8s/src/authenticators/authenticators.dart';
import 'package:k8s/src/extensions/string_extensions.dart';
import 'package:k8s/src/generic_api_client.dart';
import 'package:kubeconfig/kubeconfig.dart' hide StringValidationX;
import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;
import 'package:socks5_proxy/socks_client.dart';

/// {@template kubernetes}
/// Kubernetes
/// {@kubernetes}
class Kubernetes {
  /// @macro kubernetes
  Kubernetes({
    Kubeconfig? config,
    String? currentContext,
    BaseOptions? baseOptions,
    bool? skipTlsVerify,
    Map<String, Authenticator>? authenticators,
    Logger? logger,
  })  : _config = config,
        _currentContext = currentContext,
        _baseOptions = baseOptions,
        _skipTlsVerify = skipTlsVerify,
        _authenticators = authenticators ?? HashMap(),
        _logger = logger ?? Logger('kubernetes');

  Kubeconfig? _config;
  final String? _currentContext;
  final BaseOptions? _baseOptions;
  final bool? _skipTlsVerify;
  final Map<String, Authenticator> _authenticators;
  final Logger _logger;
  ApiClient? _apiClient;
  GenericApiClient? _genericApiClient;

  /// client
  ApiClient get client {
    if (_apiClient == null) {
      throw StateError(
        'It must first initialize. You can use init functions.',
      );
    }
    return _apiClient!;
  }

  /// genericClient
  GenericApiClient get genericClient {
    if (_apiClient == null || _genericApiClient == null) {
      throw StateError(
        'It must first initialize. You can use init functions.',
      );
    }
    return _genericApiClient!;
  }

  /// initDefault
  Future<void> initDefault({
    bool validateConfig = true,
    bool throwExceptions = true,
  }) async {
    final envVars = Platform.environment;
    var kubeconfigFile = '';

    if (envVars['KUBECONFIG'] != null) {
      kubeconfigFile = envVars['KUBECONFIG'].toString();
    }

    if (kubeconfigFile.isEmpty) {
      final homeDir = _findHomeDir(envVars);

      if (homeDir != null || homeDir!.isEmpty) {
        kubeconfigFile = path.join(homeDir, '.kube', 'config');
      }
    }

    if (kubeconfigFile.isEmpty) {
      const message = 'Default kubeconfig file path not found.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return;
    }

    await _loadConfigFromFile(kubeconfigFile);
    await init(
      validateConfig: validateConfig,
      throwExceptions: throwExceptions,
    );
  }

  /// initInCluster
  Future<void> initInCluster({
    String namespace = 'default',
    bool validateConfig = true,
    bool throwExceptions = true,
  }) async {
    const serviceAccountRoot = '/var/run/secrets/kubernetes.io/serviceaccount';
    const serviceAccountCaPath = '$serviceAccountRoot/ca.crt';
    const serviceAccountTokenPath = '$serviceAccountRoot/token';
    final envVars = Platform.environment;
    var host = envVars['KUBERNETES_SERVICE_HOST'];
    var port = envVars['KUBERNETES_SERVICE_PORT'];
    var scheme = 'https';
    var serverHost = host;

    if (host.isNullOrEmpty) {
      host = 'kubernetes.default.svc';
    }

    if (port.isNullOrEmpty) {
      port = '443';
    }

    if (port == '80' || port == '8080' || port == '8001') {
      scheme = 'http';
    }

    try {
      Uri.parseIPv6Address(host!);
      serverHost = '[$host]';
    } on FormatException {
      serverHost = host;
    }

    final kubeconfig = Kubeconfig(
      clusters: [
        NamedCluster(
          name: 'k8s',
          cluster: Cluster(
            server: '$scheme://$serverHost:$port',
            insecureSkipTlsVerify: false,
            certificateAuthority: serviceAccountCaPath,
          ),
        )
      ],
      contexts: [
        NamedContext(
          name: 'k8s',
          context: Context(
            cluster: 'k8s',
            authInfo: 'k8s',
            namespace: namespace,
          ),
        )
      ],
      authInfos: const [
        NamedAuthInfo(
          name: 'k8s',
          user: AuthInfo(
            tokenFile: serviceAccountTokenPath,
          ),
        )
      ],
      currentContext: 'k8s',
    );

    _config = kubeconfig;

    await init(
      validateConfig: validateConfig,
      throwExceptions: throwExceptions,
    );
  }

  /// initFromFile
  Future<void> initFromFile(
    String file, {
    bool validateConfig = true,
    bool throwExceptions = true,
  }) async {
    await _loadConfigFromFile(file);
    await init(
      validateConfig: validateConfig,
      throwExceptions: throwExceptions,
    );
  }

  /// init
  Future<void> init({
    bool validateConfig = true,
    bool throwExceptions = true,
  }) async {
    if (_config == null) {
      throw ArgumentError('The "config" field cannot be null. Set a kubeconfig '
          'object or initialize with init functions.');
    }

    if (validateConfig) {
      final validationResult =
          _config!.validate(throwExceptions: throwExceptions);

      if (validationResult.code != ValidationCode.valid) {
        _logger.severe(validationResult.description, validationResult);
        return;
      }
    }

    final securityContext = SecurityContext.defaultContext;
    final currentCluster = _getCurrentCluster();
    var authInfo = _getCurrentAuthInfo();

    if (currentCluster == null || authInfo == null) return;

    if (authInfo.exec != null) {
      authInfo = await _setExecAuthentication(authInfo);
    }

    _setAuthority(securityContext, currentCluster);
    _setCertificates(securityContext, authInfo!);

    final httpClient = HttpClient(context: securityContext);

    _setTlsVerify(httpClient, currentCluster);
    _setProxy(httpClient, currentCluster, throwExceptions: throwExceptions);

    var options = BaseOptions(
      baseUrl: currentCluster.server!,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    );

    if (_baseOptions != null) {
      options = _baseOptions!;

      if (options.baseUrl.isNullOrEmpty) {
        options.baseUrl = currentCluster.server!;
      }
    }

    final dio = Dio(options);

    (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate = (c) {
      return httpClient;
    };

    final interceptors = [
      BasicAuthInterceptor(),
      BearerAuthInterceptor(),
      // LogInterceptor(requestBody: true, responseBody: true),
    ];

    _apiClient = ApiClient(dio: dio, interceptors: interceptors);
    await _setAuthentication(_apiClient!, authInfo);
    _genericApiClient = GenericApiClient(_apiClient!);
  }

  Future<Kubeconfig?> _getKubeconfigFromFile(
    String file, {
    bool throwExceptions = true,
  }) async {
    String? content;

    try {
      content = await File(file).readAsString();
    } on PathNotFoundException {
      final message = 'The path "$file" does not exist.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    if (content.isNullOrEmpty) {
      final message = 'Empty file ("$file") content.';
      _logger.severe(message);
      return null;
    }

    return Kubeconfig.fromYaml(content);
  }

  Future<void> _loadConfigFromFile(
    String file, {
    bool throwExceptions = true,
  }) async {
    final pathDelimiter = Platform.isWindows ? ';' : ':';

    if (!file.contains(pathDelimiter)) {
      _config = await _getKubeconfigFromFile(
        file,
        throwExceptions: throwExceptions,
      );
    } else {
      final files = file.split(pathDelimiter)..removeWhere((x) => x == '');
      Kubeconfig? kubeconfigMerged;

      for (var i = 0; i < files.length; i++) {
        final file = files[i].trim();
        final kubeconfigCurrent = await _getKubeconfigFromFile(
          file,
          throwExceptions: throwExceptions,
        );

        if (kubeconfigCurrent == null) {
          _config = null;
          return;
        }

        if (i == 0) {
          kubeconfigMerged = kubeconfigCurrent;
          continue;
        } else {
          try {
            kubeconfigMerged = kubeconfigMerged!.merge(
              kubeconfigCurrent,
              validate: false,
              throwExceptions: true,
            );
          } catch (e) {
            if (throwExceptions) rethrow;
            _logger.severe(
              'An unexpected error occurred when merging kubeconfig files.',
            );
            return;
          }
        }
      }

      _config = kubeconfigMerged;
    }
  }

  String? _findHomeDir(Map<String, String> envVars) {
    final homeEnv = envVars['HOME'];

    if (!homeEnv.isNullOrEmpty &&
        FileSystemEntity.typeSync(homeEnv!) != FileSystemEntityType.notFound) {
      return homeEnv;
    }

    if (Platform.isWindows) {
      final homeDriveEnv = envVars['HOMEDRIVE'];
      final homePathEnv = envVars['HOMEPATH'];

      if (homeDriveEnv.isNullOrEmpty && homePathEnv.isNullOrEmpty) {
        final homeDir = path.join(homeDriveEnv!, homePathEnv);

        if (FileSystemEntity.typeSync(homeDir) !=
            FileSystemEntityType.notFound) {
          return homeDir;
        }
      }

      final userProfileEnv = envVars['USERPROFILE'];

      if (!userProfileEnv.isNullOrEmpty &&
          FileSystemEntity.typeSync(userProfileEnv!) !=
              FileSystemEntityType.notFound) {
        return userProfileEnv;
      }
    }

    return null;
  }

  Context? _getCurrentContext({bool throwExceptions = true}) {
    if (_config!.currentContext.isNullOrEmpty &&
        _currentContext.isNullOrEmpty) {
      const message = 'No active cluster.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    final namedContext = _config!.contexts!
        .firstWhereOrNull((x) => x.name == _config!.currentContext);

    if (namedContext == null) {
      const message = 'Current context not found.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    return namedContext.context;
  }

  Cluster? _getCurrentCluster({bool throwExceptions = true}) {
    final context = _getCurrentContext();

    if (context == null) return null;

    final namedCluster =
        _config!.clusters!.firstWhereOrNull((x) => x.name == context.cluster);

    if (namedCluster == null) {
      const message = 'Current cluster not found.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    return namedCluster.cluster;
  }

  AuthInfo? _getCurrentAuthInfo({bool throwExceptions = true}) {
    final context = _getCurrentContext();

    if (context == null) return null;

    final namedAuthInfo =
        _config!.authInfos!.firstWhereOrNull((x) => x.name == context.authInfo);

    if (namedAuthInfo == null) {
      const message = 'Current user not found.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    return namedAuthInfo.user;
  }

  void _setAuthority(SecurityContext securityContext, Cluster cluster) {
    if (!cluster.certificateAuthority.isNullOrEmpty) {
      securityContext.setTrustedCertificates(cluster.certificateAuthority!);
    }

    if (!cluster.certificateAuthorityData.isNullOrEmpty) {
      securityContext.setTrustedCertificatesBytes(
        base64Decode(cluster.certificateAuthorityData!),
      );
    }
  }

  void _setCertificates(SecurityContext securityContext, AuthInfo authInfo) {
    if (!authInfo.clientCertificate.isNullOrEmpty) {
      securityContext.useCertificateChain(authInfo.clientCertificate!);
    }

    if (!authInfo.clientCertificateData.isNullOrEmpty) {
      securityContext.useCertificateChainBytes(
        base64Decode(authInfo.clientCertificateData!),
      );
    }

    if (!authInfo.clientKey.isNullOrEmpty) {
      securityContext.usePrivateKey(authInfo.clientKey!);
    }

    if (!authInfo.clientKeyData.isNullOrEmpty) {
      securityContext.usePrivateKeyBytes(
        base64Decode(authInfo.clientKeyData!),
      );
    }
  }

  void _setTlsVerify(
    HttpClient httpClient,
    Cluster cluster,
  ) {
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) {
      if ((cluster.insecureSkipTlsVerify != null &&
              cluster.insecureSkipTlsVerify!) ||
          (_skipTlsVerify != null && _skipTlsVerify!)) {
        return true;
      }

      if (!cluster.certificateAuthorityData.isNullOrEmpty) {
        final certPem = String.fromCharCodes(
          base64Decode(cluster.certificateAuthorityData!),
        );

        if (certPem.contains(cert.pem) &&
            cert.endValidity.compareTo(DateTime.now()) > 0) {
          return true;
        }
      }

      if (!cluster.certificateAuthority.isNullOrEmpty) {
        final serverPem = cert.pem;
        final certFile = File(cluster.certificateAuthority!).readAsStringSync();

        if (certFile.contains(serverPem)) {
          return true;
        }
      }

      return false;
    };
  }

  void _setProxy(
    HttpClient httpClient,
    Cluster cluster, {
    bool throwExceptions = true,
  }) {
    if (!cluster.proxyURL.isNullOrEmpty) {
      final proxyUri = Uri.parse(cluster.proxyURL!);

      if (proxyUri.isScheme('socks5')) {
        SocksTCPClient.assignToHttpClient(httpClient, [
          ProxySettings(InternetAddress(proxyUri.host), proxyUri.port),
        ]);
        httpClient.findProxy = (url) => 'DIRECT';
      } else if (proxyUri.isScheme('http') || proxyUri.isScheme('https')) {
        final proxyUrl = 'PROXY ${proxyUri.host}:${proxyUri.port}';
        httpClient.findProxy = (url) => proxyUrl;
      } else {
        const message = 'Unsupported proxy-url scheme. Must be http, https, '
            'or socks5.';
        if (throwExceptions) throw Exception(message);
        _logger.severe(message);
        return;
      }
    } else {
      httpClient.findProxy = HttpClient.findProxyFromEnvironment;
      // export https_proxy=socks5h://localhost:1080
      // This is not supported for now. Only http and https proxies are
      // supported from enviroment variable.
    }
  }

  void _registerAuthenticators() {
    _authenticators['azure'] = AzureAuthenticator();
    _authenticators['gcp'] = GcpAuthenticator();
    _authenticators['openid'] = OidcAuthenticator();
  }

  Future<AuthInfo?> _setExecAuthentication(
    AuthInfo authInfo, {
    bool throwExceptions = true,
  }) async {
    final apiVersion = authInfo.exec!.apiVersion!;
    AuthInfo? authInfoCopy;

    if (![
      'client.authentication.k8s.io/v1',
      'client.authentication.k8s.io/v1beta1',
      'client.authentication.k8s.io/v1alpha1'
    ].contains(apiVersion)) {
      final message = 'Unrecognized user.exec.apiVersion: $apiVersion';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    final execResponse = await _runExec(authInfo);

    if (execResponse == null) return null;

    if (execResponse['kind'] == null ||
        execResponse['kind'] != 'ExecCredential') {
      const message = 'Unrecognized kind in the exec response.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    if (execResponse['apiVersion'] == null ||
        execResponse['apiVersion'] != apiVersion) {
      const message = 'Mismatched apiVersion in the exec response.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    if (execResponse['status'] == null) {
      const message = 'Status is null in the exec response.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
      return null;
    }

    final status = execResponse['status'] as Map<String, dynamic>;

    if (status['token'] == null) {
      if (status['clientCertificateData'] == null &&
          status['clientKeyData'] == null) {
        final message = 'No token or certificates produced by exec '
            '"${authInfo.exec!.command}" command.';
        if (throwExceptions) throw Exception(message);
        _logger.severe(message);
        return null;
      }

      const message = 'clientCertificateData and clientKeyData in the exec '
          'response must be both provided in combination.';

      if (status['clientCertificateData'] != null) {
        if (status['clientKeyData'] == null) {
          if (throwExceptions) throw Exception(message);
          _logger.severe(message);
          return null;
        }

        authInfoCopy = authInfo.copyWith(
          clientCertificateData: status['clientCertificateData'].toString(),
        );
      }

      if (status['clientKeyData'] != null) {
        if (status['clientCertificateData'] == null) {
          if (throwExceptions) throw Exception(message);
          _logger.severe(message);
          return null;
        }

        authInfoCopy = authInfo.copyWith(
          clientKeyData: status['clientKeyData'].toString(),
        );
      }

      return null;
    }

    final result = authInfoCopy != null
        ? authInfoCopy.copyWith(
            token: status['token'].toString(),
          )
        : authInfo.copyWith(
            token: status['token'].toString(),
          );

    return result;
  }

  Future<Map<String, dynamic>?> _runExec(
    AuthInfo authInfo, {
    bool throwExceptions = true,
  }) async {
    final command = authInfo.exec!.command!;
    final args = authInfo.exec!.args ?? <String>[];
    Map<String, String>? envVars;

    if (authInfo.exec!.env != null) {
      envVars = <String, String>{};
      for (final env in authInfo.exec!.env!) {
        envVars[env.name!] = env.value!;
      }
    }

    final result = await Process.run(command, args, environment: envVars);

    if (result.exitCode != 0) {
      final message =
          'exec "$command" command failed with exit code ${result.exitCode}';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
    }

    final stdout = result.stdout.toString();

    if (stdout.isNullOrEmpty) {
      final message = 'exec "$command" command response is null or empty.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
    }

    Map<String, dynamic>? stdoutJson;

    try {
      stdoutJson = json.decode(stdout) as Map<String, dynamic>;
    } catch (e) {
      final message = 'Failed to parse output of exec "$command" command.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
    }

    return stdoutJson;
  }

  Future<void> _setAuthentication(
    ApiClient apiClient,
    AuthInfo authInfo, {
    bool throwExceptions = true,
  }) async {
    // basic authentication (username/password)
    if (!authInfo.username.isNullOrEmpty && !authInfo.password.isNullOrEmpty) {
      apiClient.setBasicAuth('basic', authInfo.username!, authInfo.password!);
      return;
    }

    // token authentication
    if (!authInfo.token.isNullOrEmpty || !authInfo.tokenFile.isNullOrEmpty) {
      var token = authInfo.token;

      if (!authInfo.tokenFile.isNullOrEmpty) {
        token = await File(authInfo.tokenFile!).readAsString();
      }

      apiClient.setBearerAuth('bearer', token!);
      return;
    }

    // exec authentication
    if (authInfo.exec != null) {
      await _setExecAuthentication(authInfo);
      return;
    }

    // auth-provider authentication
    if (authInfo.authProvider != null &&
        authInfo.authProvider!.name != null &&
        authInfo.authProvider!.config != null) {
      if (_authenticators.isEmpty) {
        _registerAuthenticators();
      }

      final authenticator = _authenticators[authInfo.authProvider!.name!];
      var authConfig = authInfo.authProvider!.config!;

      if (authenticator != null) {
        if (authenticator.isExpired(authConfig)) {
          authConfig = authenticator.refresh(authConfig);
        }

        final token = authenticator.getToken(authConfig);
        apiClient.setBearerAuth('token', token);
        return;
      }

      final message = 'Unknown auth-provider: ${authInfo.authProvider!.name!}. '
          'If you are using a custom auth-provider you must register it to '
          '"authenticators" first.';
      if (throwExceptions) throw Exception(message);
      _logger.severe(message);
    }
  }
}
