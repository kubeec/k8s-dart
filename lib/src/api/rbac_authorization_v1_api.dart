//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_value/json_object.dart';
import 'package:k8s/src/api_util.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role_binding.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role_binding_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_cluster_role_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_binding.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_binding_list.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_list.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_resource_list.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_delete_options.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_status.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_watch_event.dart';

class RbacAuthorizationV1Api {

  final Dio _dio;

  final Serializers _serializers;

  const RbacAuthorizationV1Api(this._dio, this._serializers);

  /// createRbacAuthorizationV1ClusterRole
  /// create a ClusterRole
  ///
  /// Parameters:
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRole] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRole>> createRbacAuthorizationV1ClusterRole({ 
    required IoK8sApiRbacV1ClusterRole body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1ClusterRole);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRole _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRole);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRole;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRole>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// createRbacAuthorizationV1ClusterRoleBinding
  /// create a ClusterRoleBinding
  ///
  /// Parameters:
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRoleBinding>> createRbacAuthorizationV1ClusterRoleBinding({ 
    required IoK8sApiRbacV1ClusterRoleBinding body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1ClusterRoleBinding);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// createRbacAuthorizationV1NamespacedRole
  /// create a Role
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1Role] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1Role>> createRbacAuthorizationV1NamespacedRole({ 
    required String namespace,
    required IoK8sApiRbacV1Role body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1Role);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1Role _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1Role);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1Role;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1Role>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// createRbacAuthorizationV1NamespacedRoleBinding
  /// create a RoleBinding
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleBinding>> createRbacAuthorizationV1NamespacedRoleBinding({ 
    required String namespace,
    required IoK8sApiRbacV1RoleBinding body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1RoleBinding);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1ClusterRole
  /// delete a ClusterRole
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRole
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1ClusterRole({ 
    required String name,
    String? pretty,
    String? dryRun,
    int? gracePeriodSeconds,
    bool? orphanDependents,
    String? propagationPolicy,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1ClusterRoleBinding
  /// delete a ClusterRoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRoleBinding
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1ClusterRoleBinding({ 
    required String name,
    String? pretty,
    String? dryRun,
    int? gracePeriodSeconds,
    bool? orphanDependents,
    String? propagationPolicy,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1CollectionClusterRole
  /// delete collection of ClusterRole
  ///
  /// Parameters:
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1CollectionClusterRole({ 
    String? pretty,
    String? continue_,
    String? dryRun,
    String? fieldSelector,
    int? gracePeriodSeconds,
    String? labelSelector,
    int? limit,
    bool? orphanDependents,
    String? propagationPolicy,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1CollectionClusterRoleBinding
  /// delete collection of ClusterRoleBinding
  ///
  /// Parameters:
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1CollectionClusterRoleBinding({ 
    String? pretty,
    String? continue_,
    String? dryRun,
    String? fieldSelector,
    int? gracePeriodSeconds,
    String? labelSelector,
    int? limit,
    bool? orphanDependents,
    String? propagationPolicy,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1CollectionNamespacedRole
  /// delete collection of Role
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1CollectionNamespacedRole({ 
    required String namespace,
    String? pretty,
    String? continue_,
    String? dryRun,
    String? fieldSelector,
    int? gracePeriodSeconds,
    String? labelSelector,
    int? limit,
    bool? orphanDependents,
    String? propagationPolicy,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1CollectionNamespacedRoleBinding
  /// delete collection of RoleBinding
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1CollectionNamespacedRoleBinding({ 
    required String namespace,
    String? pretty,
    String? continue_,
    String? dryRun,
    String? fieldSelector,
    int? gracePeriodSeconds,
    String? labelSelector,
    int? limit,
    bool? orphanDependents,
    String? propagationPolicy,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1NamespacedRole
  /// delete a Role
  ///
  /// Parameters:
  /// * [name] - name of the Role
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1NamespacedRole({ 
    required String name,
    required String namespace,
    String? pretty,
    String? dryRun,
    int? gracePeriodSeconds,
    bool? orphanDependents,
    String? propagationPolicy,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// deleteRbacAuthorizationV1NamespacedRoleBinding
  /// delete a RoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the RoleBinding
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [gracePeriodSeconds] - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  /// * [orphanDependents] - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  /// * [propagationPolicy] - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1Status] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deleteRbacAuthorizationV1NamespacedRoleBinding({ 
    required String name,
    required String namespace,
    String? pretty,
    String? dryRun,
    int? gracePeriodSeconds,
    bool? orphanDependents,
    String? propagationPolicy,
    IoK8sApimachineryPkgApisMetaV1DeleteOptions? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (gracePeriodSeconds != null) r'gracePeriodSeconds': encodeQueryParameter(_serializers, gracePeriodSeconds, const FullType(int)),
      if (orphanDependents != null) r'orphanDependents': encodeQueryParameter(_serializers, orphanDependents, const FullType(bool)),
      if (propagationPolicy != null) r'propagationPolicy': encodeQueryParameter(_serializers, propagationPolicy, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApimachineryPkgApisMetaV1DeleteOptions);
      _bodyData = body == null ? null : _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1Status _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1Status);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1Status;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1Status>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// getRbacAuthorizationV1APIResources
  /// get available resources
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1APIResourceList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1APIResourceList>> getRbacAuthorizationV1APIResources({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1APIResourceList _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1APIResourceList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1APIResourceList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1APIResourceList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// listRbacAuthorizationV1ClusterRole
  /// list or watch objects of kind ClusterRole
  ///
  /// Parameters:
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRoleList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRoleList>> listRbacAuthorizationV1ClusterRole({ 
    String? pretty,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRoleList _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRoleList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRoleList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRoleList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// listRbacAuthorizationV1ClusterRoleBinding
  /// list or watch objects of kind ClusterRoleBinding
  ///
  /// Parameters:
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRoleBindingList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRoleBindingList>> listRbacAuthorizationV1ClusterRoleBinding({ 
    String? pretty,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRoleBindingList _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRoleBindingList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRoleBindingList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRoleBindingList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// listRbacAuthorizationV1NamespacedRole
  /// list or watch objects of kind Role
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleList>> listRbacAuthorizationV1NamespacedRole({ 
    required String namespace,
    String? pretty,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleList _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// listRbacAuthorizationV1NamespacedRoleBinding
  /// list or watch objects of kind RoleBinding
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleBindingList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleBindingList>> listRbacAuthorizationV1NamespacedRoleBinding({ 
    required String namespace,
    String? pretty,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleBindingList _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleBindingList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleBindingList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleBindingList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// listRbacAuthorizationV1RoleBindingForAllNamespaces
  /// list or watch objects of kind RoleBinding
  ///
  /// Parameters:
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleBindingList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleBindingList>> listRbacAuthorizationV1RoleBindingForAllNamespaces({ 
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/rolebindings';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleBindingList _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleBindingList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleBindingList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleBindingList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// listRbacAuthorizationV1RoleForAllNamespaces
  /// list or watch objects of kind Role
  ///
  /// Parameters:
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleList>> listRbacAuthorizationV1RoleForAllNamespaces({ 
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/roles';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleList _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// patchRbacAuthorizationV1ClusterRole
  /// partially update the specified ClusterRole
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRole
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [force] - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRole] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRole>> patchRbacAuthorizationV1ClusterRole({ 
    required String name,
    required JsonObject body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    bool? force,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json-patch+json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (force != null) r'force': encodeQueryParameter(_serializers, force, const FullType(bool)),
    };

    dynamic _bodyData;

    try {
      _bodyData = body;

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRole _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRole);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRole;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRole>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// patchRbacAuthorizationV1ClusterRoleBinding
  /// partially update the specified ClusterRoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRoleBinding
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [force] - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRoleBinding>> patchRbacAuthorizationV1ClusterRoleBinding({ 
    required String name,
    required JsonObject body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    bool? force,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json-patch+json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (force != null) r'force': encodeQueryParameter(_serializers, force, const FullType(bool)),
    };

    dynamic _bodyData;

    try {
      _bodyData = body;

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// patchRbacAuthorizationV1NamespacedRole
  /// partially update the specified Role
  ///
  /// Parameters:
  /// * [name] - name of the Role
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [force] - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1Role] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1Role>> patchRbacAuthorizationV1NamespacedRole({ 
    required String name,
    required String namespace,
    required JsonObject body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    bool? force,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json-patch+json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (force != null) r'force': encodeQueryParameter(_serializers, force, const FullType(bool)),
    };

    dynamic _bodyData;

    try {
      _bodyData = body;

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1Role _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1Role);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1Role;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1Role>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// patchRbacAuthorizationV1NamespacedRoleBinding
  /// partially update the specified RoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the RoleBinding
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [force] - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleBinding>> patchRbacAuthorizationV1NamespacedRoleBinding({ 
    required String name,
    required String namespace,
    required JsonObject body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    bool? force,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json-patch+json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (force != null) r'force': encodeQueryParameter(_serializers, force, const FullType(bool)),
    };

    dynamic _bodyData;

    try {
      _bodyData = body;

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// readRbacAuthorizationV1ClusterRole
  /// read the specified ClusterRole
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRole
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRole] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRole>> readRbacAuthorizationV1ClusterRole({ 
    required String name,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRole _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRole);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRole;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRole>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// readRbacAuthorizationV1ClusterRoleBinding
  /// read the specified ClusterRoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRoleBinding
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRoleBinding>> readRbacAuthorizationV1ClusterRoleBinding({ 
    required String name,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// readRbacAuthorizationV1NamespacedRole
  /// read the specified Role
  ///
  /// Parameters:
  /// * [name] - name of the Role
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1Role] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1Role>> readRbacAuthorizationV1NamespacedRole({ 
    required String name,
    required String namespace,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1Role _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1Role);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1Role;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1Role>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// readRbacAuthorizationV1NamespacedRoleBinding
  /// read the specified RoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the RoleBinding
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleBinding>> readRbacAuthorizationV1NamespacedRoleBinding({ 
    required String name,
    required String namespace,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// replaceRbacAuthorizationV1ClusterRole
  /// replace the specified ClusterRole
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRole
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRole] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRole>> replaceRbacAuthorizationV1ClusterRole({ 
    required String name,
    required IoK8sApiRbacV1ClusterRole body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterroles/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1ClusterRole);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRole _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRole);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRole;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRole>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// replaceRbacAuthorizationV1ClusterRoleBinding
  /// replace the specified ClusterRoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRoleBinding
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1ClusterRoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1ClusterRoleBinding>> replaceRbacAuthorizationV1ClusterRoleBinding({ 
    required String name,
    required IoK8sApiRbacV1ClusterRoleBinding body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/clusterrolebindings/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1ClusterRoleBinding);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1ClusterRoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1ClusterRoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1ClusterRoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1ClusterRoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// replaceRbacAuthorizationV1NamespacedRole
  /// replace the specified Role
  ///
  /// Parameters:
  /// * [name] - name of the Role
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1Role] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1Role>> replaceRbacAuthorizationV1NamespacedRole({ 
    required String name,
    required String namespace,
    required IoK8sApiRbacV1Role body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/roles/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1Role);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1Role _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1Role);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1Role;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1Role>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// replaceRbacAuthorizationV1NamespacedRoleBinding
  /// replace the specified RoleBinding
  ///
  /// Parameters:
  /// * [name] - name of the RoleBinding
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiRbacV1RoleBinding] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiRbacV1RoleBinding>> replaceRbacAuthorizationV1NamespacedRoleBinding({ 
    required String name,
    required String namespace,
    required IoK8sApiRbacV1RoleBinding body,
    String? pretty,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/namespaces/{namespace}/rolebindings/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiRbacV1RoleBinding);
      _bodyData = _serializers.serialize(body, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioError(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApiRbacV1RoleBinding _responseData;

    try {
      const _responseType = FullType(IoK8sApiRbacV1RoleBinding);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiRbacV1RoleBinding;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiRbacV1RoleBinding>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1ClusterRole
  /// watch changes to an object of kind ClusterRole. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRole
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1ClusterRole({ 
    required String name,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/clusterroles/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1ClusterRoleBinding
  /// watch changes to an object of kind ClusterRoleBinding. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
  ///
  /// Parameters:
  /// * [name] - name of the ClusterRoleBinding
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1ClusterRoleBinding({ 
    required String name,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/clusterrolebindings/{name}'.replaceAll('{' r'name' '}', name.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1ClusterRoleBindingList
  /// watch individual changes to a list of ClusterRoleBinding. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
  ///
  /// Parameters:
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1ClusterRoleBindingList({ 
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/clusterrolebindings';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1ClusterRoleList
  /// watch individual changes to a list of ClusterRole. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
  ///
  /// Parameters:
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1ClusterRoleList({ 
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/clusterroles';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1NamespacedRole
  /// watch changes to an object of kind Role. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
  ///
  /// Parameters:
  /// * [name] - name of the Role
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1NamespacedRole({ 
    required String name,
    required String namespace,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/roles/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1NamespacedRoleBinding
  /// watch changes to an object of kind RoleBinding. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
  ///
  /// Parameters:
  /// * [name] - name of the RoleBinding
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1NamespacedRoleBinding({ 
    required String name,
    required String namespace,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/rolebindings/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1NamespacedRoleBindingList
  /// watch individual changes to a list of RoleBinding. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1NamespacedRoleBindingList({ 
    required String namespace,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/rolebindings'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1NamespacedRoleList
  /// watch individual changes to a list of Role. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1NamespacedRoleList({ 
    required String namespace,
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/namespaces/{namespace}/roles'.replaceAll('{' r'namespace' '}', namespace.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1RoleBindingListForAllNamespaces
  /// watch individual changes to a list of RoleBinding. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
  ///
  /// Parameters:
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1RoleBindingListForAllNamespaces({ 
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/rolebindings';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// watchRbacAuthorizationV1RoleListForAllNamespaces
  /// watch individual changes to a list of Role. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
  ///
  /// Parameters:
  /// * [allowWatchBookmarks] - allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  /// * [continue_] - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  /// * [fieldSelector] - A selector to restrict the list of returned objects by their fields. Defaults to everything.
  /// * [labelSelector] - A selector to restrict the list of returned objects by their labels. Defaults to everything.
  /// * [limit] - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [resourceVersion] - resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [resourceVersionMatch] - resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  /// * [timeoutSeconds] - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  /// * [watch] - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApimachineryPkgApisMetaV1WatchEvent] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchRbacAuthorizationV1RoleListForAllNamespaces({ 
    bool? allowWatchBookmarks,
    String? continue_,
    String? fieldSelector,
    String? labelSelector,
    int? limit,
    String? pretty,
    String? resourceVersion,
    String? resourceVersionMatch,
    int? timeoutSeconds,
    bool? watch,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/rbac.authorization.k8s.io/v1/watch/roles';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'BearerToken',
            'keyName': 'authorization',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (allowWatchBookmarks != null) r'allowWatchBookmarks': encodeQueryParameter(_serializers, allowWatchBookmarks, const FullType(bool)),
      if (continue_ != null) r'continue': encodeQueryParameter(_serializers, continue_, const FullType(String)),
      if (fieldSelector != null) r'fieldSelector': encodeQueryParameter(_serializers, fieldSelector, const FullType(String)),
      if (labelSelector != null) r'labelSelector': encodeQueryParameter(_serializers, labelSelector, const FullType(String)),
      if (limit != null) r'limit': encodeQueryParameter(_serializers, limit, const FullType(int)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
      if (resourceVersion != null) r'resourceVersion': encodeQueryParameter(_serializers, resourceVersion, const FullType(String)),
      if (resourceVersionMatch != null) r'resourceVersionMatch': encodeQueryParameter(_serializers, resourceVersionMatch, const FullType(String)),
      if (timeoutSeconds != null) r'timeoutSeconds': encodeQueryParameter(_serializers, timeoutSeconds, const FullType(int)),
      if (watch != null) r'watch': encodeQueryParameter(_serializers, watch, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    IoK8sApimachineryPkgApisMetaV1WatchEvent _responseData;

    try {
      const _responseType = FullType(IoK8sApimachineryPkgApisMetaV1WatchEvent);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApimachineryPkgApisMetaV1WatchEvent;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
