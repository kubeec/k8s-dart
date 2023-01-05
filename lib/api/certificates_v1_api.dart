//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;


class CertificatesV1Api {
  CertificatesV1Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// create a CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<Response> createCertificatesV1CertificateSigningRequestWithHttpInfo(IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// create a CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> createCertificatesV1CertificateSigningRequest(IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createCertificatesV1CertificateSigningRequestWithHttpInfo(body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// delete a CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [int] gracePeriodSeconds:
  ///   The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  ///
  /// * [bool] orphanDependents:
  ///   Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  ///
  /// * [String] propagationPolicy:
  ///   Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  ///
  /// * [IoK8sApimachineryPkgApisMetaV1DeleteOptions] body:
  Future<Response> deleteCertificatesV1CertificateSigningRequestWithHttpInfo(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (gracePeriodSeconds != null) {
      queryParams.addAll(_queryParams('', 'gracePeriodSeconds', gracePeriodSeconds));
    }
    if (orphanDependents != null) {
      queryParams.addAll(_queryParams('', 'orphanDependents', orphanDependents));
    }
    if (propagationPolicy != null) {
      queryParams.addAll(_queryParams('', 'propagationPolicy', propagationPolicy));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// delete a CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [int] gracePeriodSeconds:
  ///   The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  ///
  /// * [bool] orphanDependents:
  ///   Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  ///
  /// * [String] propagationPolicy:
  ///   Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  ///
  /// * [IoK8sApimachineryPkgApisMetaV1DeleteOptions] body:
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteCertificatesV1CertificateSigningRequest(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteCertificatesV1CertificateSigningRequestWithHttpInfo(name,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApimachineryPkgApisMetaV1Status',) as IoK8sApimachineryPkgApisMetaV1Status;
    
    }
    return null;
  }

  /// delete collection of CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [int] gracePeriodSeconds:
  ///   The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [bool] orphanDependents:
  ///   Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  ///
  /// * [String] propagationPolicy:
  ///   Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [IoK8sApimachineryPkgApisMetaV1DeleteOptions] body:
  Future<Response> deleteCertificatesV1CollectionCertificateSigningRequestWithHttpInfo({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (continue_ != null) {
      queryParams.addAll(_queryParams('', 'continue', continue_));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldSelector != null) {
      queryParams.addAll(_queryParams('', 'fieldSelector', fieldSelector));
    }
    if (gracePeriodSeconds != null) {
      queryParams.addAll(_queryParams('', 'gracePeriodSeconds', gracePeriodSeconds));
    }
    if (labelSelector != null) {
      queryParams.addAll(_queryParams('', 'labelSelector', labelSelector));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (orphanDependents != null) {
      queryParams.addAll(_queryParams('', 'orphanDependents', orphanDependents));
    }
    if (propagationPolicy != null) {
      queryParams.addAll(_queryParams('', 'propagationPolicy', propagationPolicy));
    }
    if (resourceVersion != null) {
      queryParams.addAll(_queryParams('', 'resourceVersion', resourceVersion));
    }
    if (resourceVersionMatch != null) {
      queryParams.addAll(_queryParams('', 'resourceVersionMatch', resourceVersionMatch));
    }
    if (timeoutSeconds != null) {
      queryParams.addAll(_queryParams('', 'timeoutSeconds', timeoutSeconds));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// delete collection of CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [int] gracePeriodSeconds:
  ///   The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [bool] orphanDependents:
  ///   Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  ///
  /// * [String] propagationPolicy:
  ///   Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [IoK8sApimachineryPkgApisMetaV1DeleteOptions] body:
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteCertificatesV1CollectionCertificateSigningRequest({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteCertificatesV1CollectionCertificateSigningRequestWithHttpInfo( pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApimachineryPkgApisMetaV1Status',) as IoK8sApimachineryPkgApisMetaV1Status;
    
    }
    return null;
  }

  /// get available resources
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCertificatesV1APIResourcesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// get available resources
  Future<IoK8sApimachineryPkgApisMetaV1APIResourceList?> getCertificatesV1APIResources() async {
    final response = await getCertificatesV1APIResourcesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApimachineryPkgApisMetaV1APIResourceList',) as IoK8sApimachineryPkgApisMetaV1APIResourceList;
    
    }
    return null;
  }

  /// list or watch objects of kind CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [bool] allowWatchBookmarks:
  ///   allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [bool] watch:
  ///   Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  Future<Response> listCertificatesV1CertificateSigningRequestWithHttpInfo({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (allowWatchBookmarks != null) {
      queryParams.addAll(_queryParams('', 'allowWatchBookmarks', allowWatchBookmarks));
    }
    if (continue_ != null) {
      queryParams.addAll(_queryParams('', 'continue', continue_));
    }
    if (fieldSelector != null) {
      queryParams.addAll(_queryParams('', 'fieldSelector', fieldSelector));
    }
    if (labelSelector != null) {
      queryParams.addAll(_queryParams('', 'labelSelector', labelSelector));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (resourceVersion != null) {
      queryParams.addAll(_queryParams('', 'resourceVersion', resourceVersion));
    }
    if (resourceVersionMatch != null) {
      queryParams.addAll(_queryParams('', 'resourceVersionMatch', resourceVersionMatch));
    }
    if (timeoutSeconds != null) {
      queryParams.addAll(_queryParams('', 'timeoutSeconds', timeoutSeconds));
    }
    if (watch != null) {
      queryParams.addAll(_queryParams('', 'watch', watch));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// list or watch objects of kind CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [bool] allowWatchBookmarks:
  ///   allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [bool] watch:
  ///   Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  Future<IoK8sApiCertificatesV1CertificateSigningRequestList?> listCertificatesV1CertificateSigningRequest({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listCertificatesV1CertificateSigningRequestWithHttpInfo( pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequestList',) as IoK8sApiCertificatesV1CertificateSigningRequestList;
    
    }
    return null;
  }

  /// partially update the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [Object] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [bool] force:
  ///   Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  Future<Response> patchCertificatesV1CertificateSigningRequestWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }
    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }

    const contentTypes = <String>['application/json-patch+json', 'application/merge-patch+json', 'application/strategic-merge-patch+json', 'application/apply-patch+yaml'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// partially update the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [Object] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [bool] force:
  ///   Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> patchCertificatesV1CertificateSigningRequest(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchCertificatesV1CertificateSigningRequestWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// partially update approval of the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [Object] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [bool] force:
  ///   Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  Future<Response> patchCertificatesV1CertificateSigningRequestApprovalWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/approval'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }
    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }

    const contentTypes = <String>['application/json-patch+json', 'application/merge-patch+json', 'application/strategic-merge-patch+json', 'application/apply-patch+yaml'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// partially update approval of the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [Object] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [bool] force:
  ///   Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> patchCertificatesV1CertificateSigningRequestApproval(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchCertificatesV1CertificateSigningRequestApprovalWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// partially update status of the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [Object] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [bool] force:
  ///   Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  Future<Response> patchCertificatesV1CertificateSigningRequestStatusWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/status'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }
    if (force != null) {
      queryParams.addAll(_queryParams('', 'force', force));
    }

    const contentTypes = <String>['application/json-patch+json', 'application/merge-patch+json', 'application/strategic-merge-patch+json', 'application/apply-patch+yaml'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// partially update status of the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [Object] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [bool] force:
  ///   Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> patchCertificatesV1CertificateSigningRequestStatus(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchCertificatesV1CertificateSigningRequestStatusWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// read the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readCertificatesV1CertificateSigningRequestWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// read the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> readCertificatesV1CertificateSigningRequest(String name, { String? pretty, }) async {
    final response = await readCertificatesV1CertificateSigningRequestWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// read approval of the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readCertificatesV1CertificateSigningRequestApprovalWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/approval'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// read approval of the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> readCertificatesV1CertificateSigningRequestApproval(String name, { String? pretty, }) async {
    final response = await readCertificatesV1CertificateSigningRequestApprovalWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// read status of the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readCertificatesV1CertificateSigningRequestStatusWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/status'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// read status of the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> readCertificatesV1CertificateSigningRequestStatus(String name, { String? pretty, }) async {
    final response = await readCertificatesV1CertificateSigningRequestStatusWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// replace the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<Response> replaceCertificatesV1CertificateSigningRequestWithHttpInfo(String name, IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// replace the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> replaceCertificatesV1CertificateSigningRequest(String name, IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceCertificatesV1CertificateSigningRequestWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// replace approval of the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<Response> replaceCertificatesV1CertificateSigningRequestApprovalWithHttpInfo(String name, IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/approval'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// replace approval of the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> replaceCertificatesV1CertificateSigningRequestApproval(String name, IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceCertificatesV1CertificateSigningRequestApprovalWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// replace status of the specified CertificateSigningRequest
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<Response> replaceCertificatesV1CertificateSigningRequestStatusWithHttpInfo(String name, IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/certificatesigningrequests/{name}/status'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// replace status of the specified CertificateSigningRequest
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [IoK8sApiCertificatesV1CertificateSigningRequest] body (required):
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  Future<IoK8sApiCertificatesV1CertificateSigningRequest?> replaceCertificatesV1CertificateSigningRequestStatus(String name, IoK8sApiCertificatesV1CertificateSigningRequest body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceCertificatesV1CertificateSigningRequestStatusWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiCertificatesV1CertificateSigningRequest',) as IoK8sApiCertificatesV1CertificateSigningRequest;
    
    }
    return null;
  }

  /// watch changes to an object of kind CertificateSigningRequest. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [bool] allowWatchBookmarks:
  ///   allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [bool] watch:
  ///   Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  Future<Response> watchCertificatesV1CertificateSigningRequestWithHttpInfo(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/watch/certificatesigningrequests/{name}'
      .replaceAll('{name}', name);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowWatchBookmarks != null) {
      queryParams.addAll(_queryParams('', 'allowWatchBookmarks', allowWatchBookmarks));
    }
    if (continue_ != null) {
      queryParams.addAll(_queryParams('', 'continue', continue_));
    }
    if (fieldSelector != null) {
      queryParams.addAll(_queryParams('', 'fieldSelector', fieldSelector));
    }
    if (labelSelector != null) {
      queryParams.addAll(_queryParams('', 'labelSelector', labelSelector));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (resourceVersion != null) {
      queryParams.addAll(_queryParams('', 'resourceVersion', resourceVersion));
    }
    if (resourceVersionMatch != null) {
      queryParams.addAll(_queryParams('', 'resourceVersionMatch', resourceVersionMatch));
    }
    if (timeoutSeconds != null) {
      queryParams.addAll(_queryParams('', 'timeoutSeconds', timeoutSeconds));
    }
    if (watch != null) {
      queryParams.addAll(_queryParams('', 'watch', watch));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// watch changes to an object of kind CertificateSigningRequest. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CertificateSigningRequest
  ///
  /// * [bool] allowWatchBookmarks:
  ///   allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [bool] watch:
  ///   Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchCertificatesV1CertificateSigningRequest(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchCertificatesV1CertificateSigningRequestWithHttpInfo(name,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApimachineryPkgApisMetaV1WatchEvent',) as IoK8sApimachineryPkgApisMetaV1WatchEvent;
    
    }
    return null;
  }

  /// watch individual changes to a list of CertificateSigningRequest. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] allowWatchBookmarks:
  ///   allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [bool] watch:
  ///   Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  Future<Response> watchCertificatesV1CertificateSigningRequestListWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/certificates.k8s.io/v1/watch/certificatesigningrequests';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowWatchBookmarks != null) {
      queryParams.addAll(_queryParams('', 'allowWatchBookmarks', allowWatchBookmarks));
    }
    if (continue_ != null) {
      queryParams.addAll(_queryParams('', 'continue', continue_));
    }
    if (fieldSelector != null) {
      queryParams.addAll(_queryParams('', 'fieldSelector', fieldSelector));
    }
    if (labelSelector != null) {
      queryParams.addAll(_queryParams('', 'labelSelector', labelSelector));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
    }
    if (resourceVersion != null) {
      queryParams.addAll(_queryParams('', 'resourceVersion', resourceVersion));
    }
    if (resourceVersionMatch != null) {
      queryParams.addAll(_queryParams('', 'resourceVersionMatch', resourceVersionMatch));
    }
    if (timeoutSeconds != null) {
      queryParams.addAll(_queryParams('', 'timeoutSeconds', timeoutSeconds));
    }
    if (watch != null) {
      queryParams.addAll(_queryParams('', 'watch', watch));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// watch individual changes to a list of CertificateSigningRequest. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Parameters:
  ///
  /// * [bool] allowWatchBookmarks:
  ///   allowWatchBookmarks requests watch events with type \"BOOKMARK\". Servers that do not implement bookmarks may ignore this flag and bookmarks are sent at the server's discretion. Clients should not assume bookmarks are returned at any specific interval, nor may they assume the server will send any BOOKMARK event during a session. If this is not a watch, this field is ignored.
  ///
  /// * [String] continue_:
  ///   The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
  ///
  /// * [String] fieldSelector:
  ///   A selector to restrict the list of returned objects by their fields. Defaults to everything.
  ///
  /// * [String] labelSelector:
  ///   A selector to restrict the list of returned objects by their labels. Defaults to everything.
  ///
  /// * [int] limit:
  ///   limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  ///
  /// * [String] resourceVersion:
  ///   resourceVersion sets a constraint on what resource versions a request may be served from. See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [String] resourceVersionMatch:
  ///   resourceVersionMatch determines how resourceVersion is applied to list calls. It is highly recommended that resourceVersionMatch be set for list calls where resourceVersion is set See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for details.  Defaults to unset
  ///
  /// * [int] timeoutSeconds:
  ///   Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
  ///
  /// * [bool] watch:
  ///   Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchCertificatesV1CertificateSigningRequestList({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchCertificatesV1CertificateSigningRequestListWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApimachineryPkgApisMetaV1WatchEvent',) as IoK8sApimachineryPkgApisMetaV1WatchEvent;
    
    }
    return null;
  }
}
