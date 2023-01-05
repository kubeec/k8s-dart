//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;


class ResourceV1alpha1Api {
  ResourceV1alpha1Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// create a PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1PodScheduling] body (required):
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
  Future<Response> createResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings'
      .replaceAll('{namespace}', namespace);

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

  /// create a PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1PodScheduling] body (required):
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
  Future<IoK8sApiResourceV1alpha1PodScheduling?> createResourceV1alpha1NamespacedPodScheduling(String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// create a ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaim] body (required):
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
  Future<Response> createResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims'
      .replaceAll('{namespace}', namespace);

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

  /// create a ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaim] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> createResourceV1alpha1NamespacedResourceClaim(String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createResourceV1alpha1NamespacedResourceClaimWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// create a ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaimTemplate] body (required):
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
  Future<Response> createResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String namespace, IoK8sApiResourceV1alpha1ResourceClaimTemplate body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates'
      .replaceAll('{namespace}', namespace);

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

  /// create a ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaimTemplate] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate?> createResourceV1alpha1NamespacedResourceClaimTemplate(String namespace, IoK8sApiResourceV1alpha1ResourceClaimTemplate body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplate',) as IoK8sApiResourceV1alpha1ResourceClaimTemplate;
    
    }
    return null;
  }

  /// create a ResourceClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClass] body (required):
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
  Future<Response> createResourceV1alpha1ResourceClassWithHttpInfo(IoK8sApiResourceV1alpha1ResourceClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses';

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

  /// create a ResourceClass
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClass] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClass?> createResourceV1alpha1ResourceClass(IoK8sApiResourceV1alpha1ResourceClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createResourceV1alpha1ResourceClassWithHttpInfo(body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClass',) as IoK8sApiResourceV1alpha1ResourceClass;
    
    }
    return null;
  }

  /// delete collection of PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> deleteResourceV1alpha1CollectionNamespacedPodSchedulingWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings'
      .replaceAll('{namespace}', namespace);

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

  /// delete collection of PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteResourceV1alpha1CollectionNamespacedPodScheduling(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1CollectionNamespacedPodSchedulingWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> deleteResourceV1alpha1CollectionNamespacedResourceClaimWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims'
      .replaceAll('{namespace}', namespace);

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

  /// delete collection of ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteResourceV1alpha1CollectionNamespacedResourceClaim(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1CollectionNamespacedResourceClaimWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> deleteResourceV1alpha1CollectionNamespacedResourceClaimTemplateWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates'
      .replaceAll('{namespace}', namespace);

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

  /// delete collection of ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteResourceV1alpha1CollectionNamespacedResourceClaimTemplate(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1CollectionNamespacedResourceClaimTemplateWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of ResourceClass
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
  Future<Response> deleteResourceV1alpha1CollectionResourceClassWithHttpInfo({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses';

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

  /// delete collection of ResourceClass
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteResourceV1alpha1CollectionResourceClass({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1CollectionResourceClassWithHttpInfo( pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete a PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> deleteResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// delete a PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1PodScheduling?> deleteResourceV1alpha1NamespacedPodScheduling(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// delete a ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> deleteResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// delete a ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> deleteResourceV1alpha1NamespacedResourceClaim(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1NamespacedResourceClaimWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// delete a ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> deleteResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// delete a ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate?> deleteResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplate',) as IoK8sApiResourceV1alpha1ResourceClaimTemplate;
    
    }
    return null;
  }

  /// delete a ResourceClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
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
  Future<Response> deleteResourceV1alpha1ResourceClassWithHttpInfo(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses/{name}'
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

  /// delete a ResourceClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
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
  Future<IoK8sApiResourceV1alpha1ResourceClass?> deleteResourceV1alpha1ResourceClass(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteResourceV1alpha1ResourceClassWithHttpInfo(name,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClass',) as IoK8sApiResourceV1alpha1ResourceClass;
    
    }
    return null;
  }

  /// get available resources
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getResourceV1alpha1APIResourcesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/';

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
  Future<IoK8sApimachineryPkgApisMetaV1APIResourceList?> getResourceV1alpha1APIResources() async {
    final response = await getResourceV1alpha1APIResourcesWithHttpInfo();
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

  /// list or watch objects of kind PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> listResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings'
      .replaceAll('{namespace}', namespace);

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

  /// list or watch objects of kind PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1PodSchedulingList?> listResourceV1alpha1NamespacedPodScheduling(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodSchedulingList',) as IoK8sApiResourceV1alpha1PodSchedulingList;
    
    }
    return null;
  }

  /// list or watch objects of kind ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> listResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims'
      .replaceAll('{namespace}', namespace);

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

  /// list or watch objects of kind ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimList?> listResourceV1alpha1NamespacedResourceClaim(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1NamespacedResourceClaimWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimList',) as IoK8sApiResourceV1alpha1ResourceClaimList;
    
    }
    return null;
  }

  /// list or watch objects of kind ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> listResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates'
      .replaceAll('{namespace}', namespace);

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

  /// list or watch objects of kind ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplateList?> listResourceV1alpha1NamespacedResourceClaimTemplate(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplateList',) as IoK8sApiResourceV1alpha1ResourceClaimTemplateList;
    
    }
    return null;
  }

  /// list or watch objects of kind PodScheduling
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
  Future<Response> listResourceV1alpha1PodSchedulingForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/podschedulings';

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

  /// list or watch objects of kind PodScheduling
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
  Future<IoK8sApiResourceV1alpha1PodSchedulingList?> listResourceV1alpha1PodSchedulingForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1PodSchedulingForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodSchedulingList',) as IoK8sApiResourceV1alpha1PodSchedulingList;
    
    }
    return null;
  }

  /// list or watch objects of kind ResourceClaim
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
  Future<Response> listResourceV1alpha1ResourceClaimForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclaims';

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

  /// list or watch objects of kind ResourceClaim
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimList?> listResourceV1alpha1ResourceClaimForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1ResourceClaimForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimList',) as IoK8sApiResourceV1alpha1ResourceClaimList;
    
    }
    return null;
  }

  /// list or watch objects of kind ResourceClaimTemplate
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
  Future<Response> listResourceV1alpha1ResourceClaimTemplateForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclaimtemplates';

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

  /// list or watch objects of kind ResourceClaimTemplate
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplateList?> listResourceV1alpha1ResourceClaimTemplateForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1ResourceClaimTemplateForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplateList',) as IoK8sApiResourceV1alpha1ResourceClaimTemplateList;
    
    }
    return null;
  }

  /// list or watch objects of kind ResourceClass
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
  Future<Response> listResourceV1alpha1ResourceClassWithHttpInfo({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses';

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

  /// list or watch objects of kind ResourceClass
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
  Future<IoK8sApiResourceV1alpha1ResourceClassList?> listResourceV1alpha1ResourceClass({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listResourceV1alpha1ResourceClassWithHttpInfo( pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClassList',) as IoK8sApiResourceV1alpha1ResourceClassList;
    
    }
    return null;
  }

  /// partially update the specified PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> patchResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// partially update the specified PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1PodScheduling?> patchResourceV1alpha1NamespacedPodScheduling(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// partially update status of the specified PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> patchResourceV1alpha1NamespacedPodSchedulingStatusWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}/status'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// partially update status of the specified PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1PodScheduling?> patchResourceV1alpha1NamespacedPodSchedulingStatus(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchResourceV1alpha1NamespacedPodSchedulingStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// partially update the specified ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> patchResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// partially update the specified ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> patchResourceV1alpha1NamespacedResourceClaim(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchResourceV1alpha1NamespacedResourceClaimWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// partially update status of the specified ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> patchResourceV1alpha1NamespacedResourceClaimStatusWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}/status'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// partially update status of the specified ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> patchResourceV1alpha1NamespacedResourceClaimStatus(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchResourceV1alpha1NamespacedResourceClaimStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// partially update the specified ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> patchResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// partially update the specified ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate?> patchResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplate',) as IoK8sApiResourceV1alpha1ResourceClaimTemplate;
    
    }
    return null;
  }

  /// partially update the specified ResourceClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
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
  Future<Response> patchResourceV1alpha1ResourceClassWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses/{name}'
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

  /// partially update the specified ResourceClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
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
  Future<IoK8sApiResourceV1alpha1ResourceClass?> patchResourceV1alpha1ResourceClass(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchResourceV1alpha1ResourceClassWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClass',) as IoK8sApiResourceV1alpha1ResourceClass;
    
    }
    return null;
  }

  /// read the specified PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// read the specified PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiResourceV1alpha1PodScheduling?> readResourceV1alpha1NamespacedPodScheduling(String name, String namespace, { String? pretty, }) async {
    final response = await readResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// read status of the specified PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readResourceV1alpha1NamespacedPodSchedulingStatusWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}/status'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// read status of the specified PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiResourceV1alpha1PodScheduling?> readResourceV1alpha1NamespacedPodSchedulingStatus(String name, String namespace, { String? pretty, }) async {
    final response = await readResourceV1alpha1NamespacedPodSchedulingStatusWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// read the specified ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// read the specified ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> readResourceV1alpha1NamespacedResourceClaim(String name, String namespace, { String? pretty, }) async {
    final response = await readResourceV1alpha1NamespacedResourceClaimWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// read status of the specified ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readResourceV1alpha1NamespacedResourceClaimStatusWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}/status'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// read status of the specified ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> readResourceV1alpha1NamespacedResourceClaimStatus(String name, String namespace, { String? pretty, }) async {
    final response = await readResourceV1alpha1NamespacedResourceClaimStatusWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// read the specified ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// read the specified ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate?> readResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, { String? pretty, }) async {
    final response = await readResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplate',) as IoK8sApiResourceV1alpha1ResourceClaimTemplate;
    
    }
    return null;
  }

  /// read the specified ResourceClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readResourceV1alpha1ResourceClassWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses/{name}'
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

  /// read the specified ResourceClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiResourceV1alpha1ResourceClass?> readResourceV1alpha1ResourceClass(String name, { String? pretty, }) async {
    final response = await readResourceV1alpha1ResourceClassWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClass',) as IoK8sApiResourceV1alpha1ResourceClass;
    
    }
    return null;
  }

  /// replace the specified PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1PodScheduling] body (required):
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
  Future<Response> replaceResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String name, String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// replace the specified PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1PodScheduling] body (required):
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
  Future<IoK8sApiResourceV1alpha1PodScheduling?> replaceResourceV1alpha1NamespacedPodScheduling(String name, String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// replace status of the specified PodScheduling
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1PodScheduling] body (required):
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
  Future<Response> replaceResourceV1alpha1NamespacedPodSchedulingStatusWithHttpInfo(String name, String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/podschedulings/{name}/status'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// replace status of the specified PodScheduling
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1PodScheduling] body (required):
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
  Future<IoK8sApiResourceV1alpha1PodScheduling?> replaceResourceV1alpha1NamespacedPodSchedulingStatus(String name, String namespace, IoK8sApiResourceV1alpha1PodScheduling body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceResourceV1alpha1NamespacedPodSchedulingStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1PodScheduling',) as IoK8sApiResourceV1alpha1PodScheduling;
    
    }
    return null;
  }

  /// replace the specified ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaim] body (required):
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
  Future<Response> replaceResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// replace the specified ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaim] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> replaceResourceV1alpha1NamespacedResourceClaim(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceResourceV1alpha1NamespacedResourceClaimWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// replace status of the specified ResourceClaim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaim] body (required):
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
  Future<Response> replaceResourceV1alpha1NamespacedResourceClaimStatusWithHttpInfo(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaims/{name}/status'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// replace status of the specified ResourceClaim
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaim] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClaim?> replaceResourceV1alpha1NamespacedResourceClaimStatus(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaim body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceResourceV1alpha1NamespacedResourceClaimStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaim',) as IoK8sApiResourceV1alpha1ResourceClaim;
    
    }
    return null;
  }

  /// replace the specified ResourceClaimTemplate
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaimTemplate] body (required):
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
  Future<Response> replaceResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaimTemplate body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/namespaces/{namespace}/resourceclaimtemplates/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// replace the specified ResourceClaimTemplate
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClaimTemplate] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClaimTemplate?> replaceResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, IoK8sApiResourceV1alpha1ResourceClaimTemplate body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClaimTemplate',) as IoK8sApiResourceV1alpha1ResourceClaimTemplate;
    
    }
    return null;
  }

  /// replace the specified ResourceClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClass] body (required):
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
  Future<Response> replaceResourceV1alpha1ResourceClassWithHttpInfo(String name, IoK8sApiResourceV1alpha1ResourceClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/resourceclasses/{name}'
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

  /// replace the specified ResourceClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
  ///
  /// * [IoK8sApiResourceV1alpha1ResourceClass] body (required):
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
  Future<IoK8sApiResourceV1alpha1ResourceClass?> replaceResourceV1alpha1ResourceClass(String name, IoK8sApiResourceV1alpha1ResourceClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceResourceV1alpha1ResourceClassWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiResourceV1alpha1ResourceClass',) as IoK8sApiResourceV1alpha1ResourceClass;
    
    }
    return null;
  }

  /// watch changes to an object of kind PodScheduling. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> watchResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/namespaces/{namespace}/podschedulings/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// watch changes to an object of kind PodScheduling. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the PodScheduling
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1NamespacedPodScheduling(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1NamespacedPodSchedulingWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of PodScheduling. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> watchResourceV1alpha1NamespacedPodSchedulingListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/namespaces/{namespace}/podschedulings'
      .replaceAll('{namespace}', namespace);

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

  /// watch individual changes to a list of PodScheduling. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1NamespacedPodSchedulingList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1NamespacedPodSchedulingListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> watchResourceV1alpha1NamespacedResourceClaimWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/namespaces/{namespace}/resourceclaims/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// watch changes to an object of kind ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaim
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1NamespacedResourceClaim(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1NamespacedResourceClaimWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> watchResourceV1alpha1NamespacedResourceClaimListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/namespaces/{namespace}/resourceclaims'
      .replaceAll('{namespace}', namespace);

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

  /// watch individual changes to a list of ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1NamespacedResourceClaimList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1NamespacedResourceClaimListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> watchResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/namespaces/{namespace}/resourceclaimtemplates/{name}'
      .replaceAll('{name}', name)
      .replaceAll('{namespace}', namespace);

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

  /// watch changes to an object of kind ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClaimTemplate
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1NamespacedResourceClaimTemplate(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1NamespacedResourceClaimTemplateWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<Response> watchResourceV1alpha1NamespacedResourceClaimTemplateListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/namespaces/{namespace}/resourceclaimtemplates'
      .replaceAll('{namespace}', namespace);

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

  /// watch individual changes to a list of ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead.
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1NamespacedResourceClaimTemplateList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1NamespacedResourceClaimTemplateListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of PodScheduling. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchResourceV1alpha1PodSchedulingListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/podschedulings';

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

  /// watch individual changes to a list of PodScheduling. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1PodSchedulingListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1PodSchedulingListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchResourceV1alpha1ResourceClaimListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/resourceclaims';

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

  /// watch individual changes to a list of ResourceClaim. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1ResourceClaimListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1ResourceClaimListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchResourceV1alpha1ResourceClaimTemplateListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/resourceclaimtemplates';

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

  /// watch individual changes to a list of ResourceClaimTemplate. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1ResourceClaimTemplateListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1ResourceClaimTemplateListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind ResourceClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
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
  Future<Response> watchResourceV1alpha1ResourceClassWithHttpInfo(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/resourceclasses/{name}'
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

  /// watch changes to an object of kind ResourceClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ResourceClass
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1ResourceClass(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1ResourceClassWithHttpInfo(name,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ResourceClass. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchResourceV1alpha1ResourceClassListWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/resource.k8s.io/v1alpha1/watch/resourceclasses';

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

  /// watch individual changes to a list of ResourceClass. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchResourceV1alpha1ResourceClassList({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchResourceV1alpha1ResourceClassListWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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
