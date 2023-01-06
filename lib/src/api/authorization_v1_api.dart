//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:k8s/src/api_util.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_local_subject_access_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_self_subject_access_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_self_subject_rules_review.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_subject_access_review.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_resource_list.dart';

class AuthorizationV1Api {

  final Dio _dio;

  final Serializers _serializers;

  const AuthorizationV1Api(this._dio, this._serializers);

  /// createAuthorizationV1NamespacedLocalSubjectAccessReview
  /// create a LocalSubjectAccessReview
  ///
  /// Parameters:
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [body] 
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiAuthorizationV1LocalSubjectAccessReview] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiAuthorizationV1LocalSubjectAccessReview>> createAuthorizationV1NamespacedLocalSubjectAccessReview({ 
    required String namespace,
    required IoK8sApiAuthorizationV1LocalSubjectAccessReview body,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/authorization.k8s.io/v1/namespaces/{namespace}/localsubjectaccessreviews'.replaceAll('{' r'namespace' '}', namespace.toString());
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
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiAuthorizationV1LocalSubjectAccessReview);
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

    IoK8sApiAuthorizationV1LocalSubjectAccessReview _responseData;

    try {
      const _responseType = FullType(IoK8sApiAuthorizationV1LocalSubjectAccessReview);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiAuthorizationV1LocalSubjectAccessReview;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiAuthorizationV1LocalSubjectAccessReview>(
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

  /// createAuthorizationV1SelfSubjectAccessReview
  /// create a SelfSubjectAccessReview
  ///
  /// Parameters:
  /// * [body] 
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiAuthorizationV1SelfSubjectAccessReview] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiAuthorizationV1SelfSubjectAccessReview>> createAuthorizationV1SelfSubjectAccessReview({ 
    required IoK8sApiAuthorizationV1SelfSubjectAccessReview body,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/authorization.k8s.io/v1/selfsubjectaccessreviews';
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
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiAuthorizationV1SelfSubjectAccessReview);
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

    IoK8sApiAuthorizationV1SelfSubjectAccessReview _responseData;

    try {
      const _responseType = FullType(IoK8sApiAuthorizationV1SelfSubjectAccessReview);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiAuthorizationV1SelfSubjectAccessReview;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiAuthorizationV1SelfSubjectAccessReview>(
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

  /// createAuthorizationV1SelfSubjectRulesReview
  /// create a SelfSubjectRulesReview
  ///
  /// Parameters:
  /// * [body] 
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiAuthorizationV1SelfSubjectRulesReview] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiAuthorizationV1SelfSubjectRulesReview>> createAuthorizationV1SelfSubjectRulesReview({ 
    required IoK8sApiAuthorizationV1SelfSubjectRulesReview body,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/authorization.k8s.io/v1/selfsubjectrulesreviews';
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
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiAuthorizationV1SelfSubjectRulesReview);
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

    IoK8sApiAuthorizationV1SelfSubjectRulesReview _responseData;

    try {
      const _responseType = FullType(IoK8sApiAuthorizationV1SelfSubjectRulesReview);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiAuthorizationV1SelfSubjectRulesReview;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiAuthorizationV1SelfSubjectRulesReview>(
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

  /// createAuthorizationV1SubjectAccessReview
  /// create a SubjectAccessReview
  ///
  /// Parameters:
  /// * [body] 
  /// * [dryRun] - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  /// * [fieldManager] - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// * [fieldValidation] - fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiAuthorizationV1SubjectAccessReview] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiAuthorizationV1SubjectAccessReview>> createAuthorizationV1SubjectAccessReview({ 
    required IoK8sApiAuthorizationV1SubjectAccessReview body,
    String? dryRun,
    String? fieldManager,
    String? fieldValidation,
    String? pretty,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/authorization.k8s.io/v1/subjectaccessreviews';
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
      if (dryRun != null) r'dryRun': encodeQueryParameter(_serializers, dryRun, const FullType(String)),
      if (fieldManager != null) r'fieldManager': encodeQueryParameter(_serializers, fieldManager, const FullType(String)),
      if (fieldValidation != null) r'fieldValidation': encodeQueryParameter(_serializers, fieldValidation, const FullType(String)),
      if (pretty != null) r'pretty': encodeQueryParameter(_serializers, pretty, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      const _type = FullType(IoK8sApiAuthorizationV1SubjectAccessReview);
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

    IoK8sApiAuthorizationV1SubjectAccessReview _responseData;

    try {
      const _responseType = FullType(IoK8sApiAuthorizationV1SubjectAccessReview);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiAuthorizationV1SubjectAccessReview;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiAuthorizationV1SubjectAccessReview>(
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

  /// getAuthorizationV1APIResources
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1APIResourceList>> getAuthorizationV1APIResources({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/authorization.k8s.io/v1/';
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

}
