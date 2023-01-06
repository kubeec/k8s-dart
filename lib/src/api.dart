//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:k8s/src/serializers.dart';
import 'package:k8s/src/auth/api_key_auth.dart';
import 'package:k8s/src/auth/basic_auth.dart';
import 'package:k8s/src/auth/bearer_auth.dart';
import 'package:k8s/src/auth/oauth.dart';
import 'package:k8s/src/api/admissionregistration_api.dart';
import 'package:k8s/src/api/admissionregistration_v1_api.dart';
import 'package:k8s/src/api/admissionregistration_v1alpha1_api.dart';
import 'package:k8s/src/api/apiextensions_api.dart';
import 'package:k8s/src/api/apiextensions_v1_api.dart';
import 'package:k8s/src/api/apiregistration_api.dart';
import 'package:k8s/src/api/apiregistration_v1_api.dart';
import 'package:k8s/src/api/apis_api.dart';
import 'package:k8s/src/api/apps_api.dart';
import 'package:k8s/src/api/apps_v1_api.dart';
import 'package:k8s/src/api/authentication_api.dart';
import 'package:k8s/src/api/authentication_v1_api.dart';
import 'package:k8s/src/api/authentication_v1alpha1_api.dart';
import 'package:k8s/src/api/authorization_api.dart';
import 'package:k8s/src/api/authorization_v1_api.dart';
import 'package:k8s/src/api/autoscaling_api.dart';
import 'package:k8s/src/api/autoscaling_v1_api.dart';
import 'package:k8s/src/api/autoscaling_v2_api.dart';
import 'package:k8s/src/api/batch_api.dart';
import 'package:k8s/src/api/batch_v1_api.dart';
import 'package:k8s/src/api/certificates_api.dart';
import 'package:k8s/src/api/certificates_v1_api.dart';
import 'package:k8s/src/api/coordination_api.dart';
import 'package:k8s/src/api/coordination_v1_api.dart';
import 'package:k8s/src/api/core_api.dart';
import 'package:k8s/src/api/core_v1_api.dart';
import 'package:k8s/src/api/discovery_api.dart';
import 'package:k8s/src/api/discovery_v1_api.dart';
import 'package:k8s/src/api/events_api.dart';
import 'package:k8s/src/api/events_v1_api.dart';
import 'package:k8s/src/api/flowcontrol_apiserver_api.dart';
import 'package:k8s/src/api/flowcontrol_apiserver_v1beta2_api.dart';
import 'package:k8s/src/api/flowcontrol_apiserver_v1beta3_api.dart';
import 'package:k8s/src/api/internal_apiserver_api.dart';
import 'package:k8s/src/api/internal_apiserver_v1alpha1_api.dart';
import 'package:k8s/src/api/logs_api.dart';
import 'package:k8s/src/api/networking_api.dart';
import 'package:k8s/src/api/networking_v1_api.dart';
import 'package:k8s/src/api/networking_v1alpha1_api.dart';
import 'package:k8s/src/api/node_api.dart';
import 'package:k8s/src/api/node_v1_api.dart';
import 'package:k8s/src/api/openid_api.dart';
import 'package:k8s/src/api/policy_api.dart';
import 'package:k8s/src/api/policy_v1_api.dart';
import 'package:k8s/src/api/rbac_authorization_api.dart';
import 'package:k8s/src/api/rbac_authorization_v1_api.dart';
import 'package:k8s/src/api/resource_api.dart';
import 'package:k8s/src/api/resource_v1alpha1_api.dart';
import 'package:k8s/src/api/scheduling_api.dart';
import 'package:k8s/src/api/scheduling_v1_api.dart';
import 'package:k8s/src/api/storage_api.dart';
import 'package:k8s/src/api/storage_v1_api.dart';
import 'package:k8s/src/api/storage_v1beta1_api.dart';
import 'package:k8s/src/api/version_api.dart';
import 'package:k8s/src/api/well_known_api.dart';

class K8s {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  K8s({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    bool skipTlsVerify = false,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }

    (this.dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        if (skipTlsVerify)
          return true;

        return false;
      };
    };
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AdmissionregistrationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdmissionregistrationApi getAdmissionregistrationApi() {
    return AdmissionregistrationApi(dio, serializers);
  }

  /// Get AdmissionregistrationV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdmissionregistrationV1Api getAdmissionregistrationV1Api() {
    return AdmissionregistrationV1Api(dio, serializers);
  }

  /// Get AdmissionregistrationV1alpha1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdmissionregistrationV1alpha1Api getAdmissionregistrationV1alpha1Api() {
    return AdmissionregistrationV1alpha1Api(dio, serializers);
  }

  /// Get ApiextensionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiextensionsApi getApiextensionsApi() {
    return ApiextensionsApi(dio, serializers);
  }

  /// Get ApiextensionsV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiextensionsV1Api getApiextensionsV1Api() {
    return ApiextensionsV1Api(dio, serializers);
  }

  /// Get ApiregistrationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiregistrationApi getApiregistrationApi() {
    return ApiregistrationApi(dio, serializers);
  }

  /// Get ApiregistrationV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApiregistrationV1Api getApiregistrationV1Api() {
    return ApiregistrationV1Api(dio, serializers);
  }

  /// Get ApisApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ApisApi getApisApi() {
    return ApisApi(dio, serializers);
  }

  /// Get AppsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppsApi getAppsApi() {
    return AppsApi(dio, serializers);
  }

  /// Get AppsV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AppsV1Api getAppsV1Api() {
    return AppsV1Api(dio, serializers);
  }

  /// Get AuthenticationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationApi getAuthenticationApi() {
    return AuthenticationApi(dio, serializers);
  }

  /// Get AuthenticationV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationV1Api getAuthenticationV1Api() {
    return AuthenticationV1Api(dio, serializers);
  }

  /// Get AuthenticationV1alpha1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthenticationV1alpha1Api getAuthenticationV1alpha1Api() {
    return AuthenticationV1alpha1Api(dio, serializers);
  }

  /// Get AuthorizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthorizationApi getAuthorizationApi() {
    return AuthorizationApi(dio, serializers);
  }

  /// Get AuthorizationV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthorizationV1Api getAuthorizationV1Api() {
    return AuthorizationV1Api(dio, serializers);
  }

  /// Get AutoscalingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutoscalingApi getAutoscalingApi() {
    return AutoscalingApi(dio, serializers);
  }

  /// Get AutoscalingV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutoscalingV1Api getAutoscalingV1Api() {
    return AutoscalingV1Api(dio, serializers);
  }

  /// Get AutoscalingV2Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AutoscalingV2Api getAutoscalingV2Api() {
    return AutoscalingV2Api(dio, serializers);
  }

  /// Get BatchApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BatchApi getBatchApi() {
    return BatchApi(dio, serializers);
  }

  /// Get BatchV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BatchV1Api getBatchV1Api() {
    return BatchV1Api(dio, serializers);
  }

  /// Get CertificatesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CertificatesApi getCertificatesApi() {
    return CertificatesApi(dio, serializers);
  }

  /// Get CertificatesV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CertificatesV1Api getCertificatesV1Api() {
    return CertificatesV1Api(dio, serializers);
  }

  /// Get CoordinationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoordinationApi getCoordinationApi() {
    return CoordinationApi(dio, serializers);
  }

  /// Get CoordinationV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoordinationV1Api getCoordinationV1Api() {
    return CoordinationV1Api(dio, serializers);
  }

  /// Get CoreApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoreApi getCoreApi() {
    return CoreApi(dio, serializers);
  }

  /// Get CoreV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CoreV1Api getCoreV1Api() {
    return CoreV1Api(dio, serializers);
  }

  /// Get DiscoveryApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DiscoveryApi getDiscoveryApi() {
    return DiscoveryApi(dio, serializers);
  }

  /// Get DiscoveryV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DiscoveryV1Api getDiscoveryV1Api() {
    return DiscoveryV1Api(dio, serializers);
  }

  /// Get EventsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EventsApi getEventsApi() {
    return EventsApi(dio, serializers);
  }

  /// Get EventsV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  EventsV1Api getEventsV1Api() {
    return EventsV1Api(dio, serializers);
  }

  /// Get FlowcontrolApiserverApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FlowcontrolApiserverApi getFlowcontrolApiserverApi() {
    return FlowcontrolApiserverApi(dio, serializers);
  }

  /// Get FlowcontrolApiserverV1beta2Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FlowcontrolApiserverV1beta2Api getFlowcontrolApiserverV1beta2Api() {
    return FlowcontrolApiserverV1beta2Api(dio, serializers);
  }

  /// Get FlowcontrolApiserverV1beta3Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FlowcontrolApiserverV1beta3Api getFlowcontrolApiserverV1beta3Api() {
    return FlowcontrolApiserverV1beta3Api(dio, serializers);
  }

  /// Get InternalApiserverApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InternalApiserverApi getInternalApiserverApi() {
    return InternalApiserverApi(dio, serializers);
  }

  /// Get InternalApiserverV1alpha1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InternalApiserverV1alpha1Api getInternalApiserverV1alpha1Api() {
    return InternalApiserverV1alpha1Api(dio, serializers);
  }

  /// Get LogsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogsApi getLogsApi() {
    return LogsApi(dio, serializers);
  }

  /// Get NetworkingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NetworkingApi getNetworkingApi() {
    return NetworkingApi(dio, serializers);
  }

  /// Get NetworkingV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NetworkingV1Api getNetworkingV1Api() {
    return NetworkingV1Api(dio, serializers);
  }

  /// Get NetworkingV1alpha1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NetworkingV1alpha1Api getNetworkingV1alpha1Api() {
    return NetworkingV1alpha1Api(dio, serializers);
  }

  /// Get NodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NodeApi getNodeApi() {
    return NodeApi(dio, serializers);
  }

  /// Get NodeV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  NodeV1Api getNodeV1Api() {
    return NodeV1Api(dio, serializers);
  }

  /// Get OpenidApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OpenidApi getOpenidApi() {
    return OpenidApi(dio, serializers);
  }

  /// Get PolicyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PolicyApi getPolicyApi() {
    return PolicyApi(dio, serializers);
  }

  /// Get PolicyV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PolicyV1Api getPolicyV1Api() {
    return PolicyV1Api(dio, serializers);
  }

  /// Get RbacAuthorizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RbacAuthorizationApi getRbacAuthorizationApi() {
    return RbacAuthorizationApi(dio, serializers);
  }

  /// Get RbacAuthorizationV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RbacAuthorizationV1Api getRbacAuthorizationV1Api() {
    return RbacAuthorizationV1Api(dio, serializers);
  }

  /// Get ResourceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ResourceApi getResourceApi() {
    return ResourceApi(dio, serializers);
  }

  /// Get ResourceV1alpha1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ResourceV1alpha1Api getResourceV1alpha1Api() {
    return ResourceV1alpha1Api(dio, serializers);
  }

  /// Get SchedulingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SchedulingApi getSchedulingApi() {
    return SchedulingApi(dio, serializers);
  }

  /// Get SchedulingV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SchedulingV1Api getSchedulingV1Api() {
    return SchedulingV1Api(dio, serializers);
  }

  /// Get StorageApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StorageApi getStorageApi() {
    return StorageApi(dio, serializers);
  }

  /// Get StorageV1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StorageV1Api getStorageV1Api() {
    return StorageV1Api(dio, serializers);
  }

  /// Get StorageV1beta1Api instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StorageV1beta1Api getStorageV1beta1Api() {
    return StorageV1beta1Api(dio, serializers);
  }

  /// Get VersionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VersionApi getVersionApi() {
    return VersionApi(dio, serializers);
  }

  /// Get WellKnownApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WellKnownApi getWellKnownApi() {
    return WellKnownApi(dio, serializers);
  }
}
