//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:built_value/json_object.dart';
import 'package:k8s/src/api_util.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget_list.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_api_resource_list.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_delete_options.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_status.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_watch_event.dart';

class PolicyV1Api {

  final Dio _dio;

  final Serializers _serializers;

  const PolicyV1Api(this._dio, this._serializers);

  /// createPolicyV1NamespacedPodDisruptionBudget
  /// create a PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> createPolicyV1NamespacedPodDisruptionBudget({ 
    required String namespace,
    required IoK8sApiPolicyV1PodDisruptionBudget body,
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets'.replaceAll('{' r'namespace' '}', namespace.toString());
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
      const _type = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// deletePolicyV1CollectionNamespacedPodDisruptionBudget
  /// delete collection of PodDisruptionBudget
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deletePolicyV1CollectionNamespacedPodDisruptionBudget({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets'.replaceAll('{' r'namespace' '}', namespace.toString());
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

  /// deletePolicyV1NamespacedPodDisruptionBudget
  /// delete a PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1Status>> deletePolicyV1NamespacedPodDisruptionBudget({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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

  /// getPolicyV1APIResources
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1APIResourceList>> getPolicyV1APIResources({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/apis/policy/v1/';
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

  /// listPolicyV1NamespacedPodDisruptionBudget
  /// list or watch objects of kind PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudgetList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudgetList>> listPolicyV1NamespacedPodDisruptionBudget({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets'.replaceAll('{' r'namespace' '}', namespace.toString());
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

    IoK8sApiPolicyV1PodDisruptionBudgetList _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudgetList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudgetList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudgetList>(
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

  /// listPolicyV1PodDisruptionBudgetForAllNamespaces
  /// list or watch objects of kind PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudgetList] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudgetList>> listPolicyV1PodDisruptionBudgetForAllNamespaces({ 
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
    final _path = r'/apis/policy/v1/poddisruptionbudgets';
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

    IoK8sApiPolicyV1PodDisruptionBudgetList _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudgetList);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudgetList;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudgetList>(
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

  /// patchPolicyV1NamespacedPodDisruptionBudget
  /// partially update the specified PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> patchPolicyV1NamespacedPodDisruptionBudget({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// patchPolicyV1NamespacedPodDisruptionBudgetStatus
  /// partially update status of the specified PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> patchPolicyV1NamespacedPodDisruptionBudgetStatus({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}/status'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// readPolicyV1NamespacedPodDisruptionBudget
  /// read the specified PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> readPolicyV1NamespacedPodDisruptionBudget({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// readPolicyV1NamespacedPodDisruptionBudgetStatus
  /// read status of the specified PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
  /// * [namespace] - object name and auth scope, such as for teams and projects
  /// * [pretty] - If 'true', then the output is pretty printed.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> readPolicyV1NamespacedPodDisruptionBudgetStatus({ 
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}/status'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// replacePolicyV1NamespacedPodDisruptionBudget
  /// replace the specified PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> replacePolicyV1NamespacedPodDisruptionBudget({ 
    required String name,
    required String namespace,
    required IoK8sApiPolicyV1PodDisruptionBudget body,
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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
      const _type = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// replacePolicyV1NamespacedPodDisruptionBudgetStatus
  /// replace status of the specified PodDisruptionBudget
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
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
  /// Returns a [Future] containing a [Response] with a [IoK8sApiPolicyV1PodDisruptionBudget] as data
  /// Throws [DioError] if API call or serialization fails
  Future<Response<IoK8sApiPolicyV1PodDisruptionBudget>> replacePolicyV1NamespacedPodDisruptionBudgetStatus({ 
    required String name,
    required String namespace,
    required IoK8sApiPolicyV1PodDisruptionBudget body,
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
    final _path = r'/apis/policy/v1/namespaces/{namespace}/poddisruptionbudgets/{name}/status'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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
      const _type = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
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

    IoK8sApiPolicyV1PodDisruptionBudget _responseData;

    try {
      const _responseType = FullType(IoK8sApiPolicyV1PodDisruptionBudget);
      _responseData = _serializers.deserialize(
        _response.data!,
        specifiedType: _responseType,
      ) as IoK8sApiPolicyV1PodDisruptionBudget;

    } catch (error, stackTrace) {
      throw DioError(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioErrorType.other,
        error: error,
      )..stackTrace = stackTrace;
    }

    return Response<IoK8sApiPolicyV1PodDisruptionBudget>(
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

  /// watchPolicyV1NamespacedPodDisruptionBudget
  /// watch changes to an object of kind PodDisruptionBudget. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
  ///
  /// Parameters:
  /// * [name] - name of the PodDisruptionBudget
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchPolicyV1NamespacedPodDisruptionBudget({ 
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
    final _path = r'/apis/policy/v1/watch/namespaces/{namespace}/poddisruptionbudgets/{name}'.replaceAll('{' r'name' '}', name.toString()).replaceAll('{' r'namespace' '}', namespace.toString());
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

  /// watchPolicyV1NamespacedPodDisruptionBudgetList
  /// watch individual changes to a list of PodDisruptionBudget. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchPolicyV1NamespacedPodDisruptionBudgetList({ 
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
    final _path = r'/apis/policy/v1/watch/namespaces/{namespace}/poddisruptionbudgets'.replaceAll('{' r'namespace' '}', namespace.toString());
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

  /// watchPolicyV1PodDisruptionBudgetListForAllNamespaces
  /// watch individual changes to a list of PodDisruptionBudget. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
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
  Future<Response<IoK8sApimachineryPkgApisMetaV1WatchEvent>> watchPolicyV1PodDisruptionBudgetListForAllNamespaces({ 
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
    final _path = r'/apis/policy/v1/watch/poddisruptionbudgets';
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
