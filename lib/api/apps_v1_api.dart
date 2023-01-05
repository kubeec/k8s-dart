//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;


class AppsV1Api {
  AppsV1Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// create a ControllerRevision
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ControllerRevision] body (required):
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
  Future<Response> createAppsV1NamespacedControllerRevisionWithHttpInfo(String namespace, IoK8sApiAppsV1ControllerRevision body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions'
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

  /// create a ControllerRevision
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ControllerRevision] body (required):
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
  Future<IoK8sApiAppsV1ControllerRevision?> createAppsV1NamespacedControllerRevision(String namespace, IoK8sApiAppsV1ControllerRevision body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createAppsV1NamespacedControllerRevisionWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ControllerRevision',) as IoK8sApiAppsV1ControllerRevision;
    
    }
    return null;
  }

  /// create a DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1DaemonSet] body (required):
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
  Future<Response> createAppsV1NamespacedDaemonSetWithHttpInfo(String namespace, IoK8sApiAppsV1DaemonSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets'
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

  /// create a DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1DaemonSet] body (required):
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
  Future<IoK8sApiAppsV1DaemonSet?> createAppsV1NamespacedDaemonSet(String namespace, IoK8sApiAppsV1DaemonSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createAppsV1NamespacedDaemonSetWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// create a Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1Deployment] body (required):
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
  Future<Response> createAppsV1NamespacedDeploymentWithHttpInfo(String namespace, IoK8sApiAppsV1Deployment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments'
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

  /// create a Deployment
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1Deployment] body (required):
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
  Future<IoK8sApiAppsV1Deployment?> createAppsV1NamespacedDeployment(String namespace, IoK8sApiAppsV1Deployment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createAppsV1NamespacedDeploymentWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// create a ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ReplicaSet] body (required):
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
  Future<Response> createAppsV1NamespacedReplicaSetWithHttpInfo(String namespace, IoK8sApiAppsV1ReplicaSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets'
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

  /// create a ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ReplicaSet] body (required):
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
  Future<IoK8sApiAppsV1ReplicaSet?> createAppsV1NamespacedReplicaSet(String namespace, IoK8sApiAppsV1ReplicaSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createAppsV1NamespacedReplicaSetWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// create a StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1StatefulSet] body (required):
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
  Future<Response> createAppsV1NamespacedStatefulSetWithHttpInfo(String namespace, IoK8sApiAppsV1StatefulSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets'
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

  /// create a StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1StatefulSet] body (required):
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
  Future<IoK8sApiAppsV1StatefulSet?> createAppsV1NamespacedStatefulSet(String namespace, IoK8sApiAppsV1StatefulSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createAppsV1NamespacedStatefulSetWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// delete collection of ControllerRevision
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
  Future<Response> deleteAppsV1CollectionNamespacedControllerRevisionWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions'
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

  /// delete collection of ControllerRevision
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1CollectionNamespacedControllerRevision(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1CollectionNamespacedControllerRevisionWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of DaemonSet
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
  Future<Response> deleteAppsV1CollectionNamespacedDaemonSetWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets'
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

  /// delete collection of DaemonSet
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1CollectionNamespacedDaemonSet(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1CollectionNamespacedDaemonSetWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of Deployment
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
  Future<Response> deleteAppsV1CollectionNamespacedDeploymentWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments'
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

  /// delete collection of Deployment
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1CollectionNamespacedDeployment(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1CollectionNamespacedDeploymentWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of ReplicaSet
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
  Future<Response> deleteAppsV1CollectionNamespacedReplicaSetWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets'
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

  /// delete collection of ReplicaSet
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1CollectionNamespacedReplicaSet(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1CollectionNamespacedReplicaSetWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of StatefulSet
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
  Future<Response> deleteAppsV1CollectionNamespacedStatefulSetWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets'
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

  /// delete collection of StatefulSet
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1CollectionNamespacedStatefulSet(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1CollectionNamespacedStatefulSetWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete a ControllerRevision
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
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
  Future<Response> deleteAppsV1NamespacedControllerRevisionWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}'
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

  /// delete a ControllerRevision
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1NamespacedControllerRevision(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1NamespacedControllerRevisionWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
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

  /// delete a DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<Response> deleteAppsV1NamespacedDaemonSetWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}'
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

  /// delete a DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1NamespacedDaemonSet(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1NamespacedDaemonSetWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
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

  /// delete a Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<Response> deleteAppsV1NamespacedDeploymentWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}'
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

  /// delete a Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1NamespacedDeployment(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1NamespacedDeploymentWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
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

  /// delete a ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<Response> deleteAppsV1NamespacedReplicaSetWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}'
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

  /// delete a ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1NamespacedReplicaSet(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1NamespacedReplicaSetWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
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

  /// delete a StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<Response> deleteAppsV1NamespacedStatefulSetWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}'
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

  /// delete a StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteAppsV1NamespacedStatefulSet(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteAppsV1NamespacedStatefulSetWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
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
  Future<Response> getAppsV1APIResourcesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/';

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
  Future<IoK8sApimachineryPkgApisMetaV1APIResourceList?> getAppsV1APIResources() async {
    final response = await getAppsV1APIResourcesWithHttpInfo();
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

  /// list or watch objects of kind ControllerRevision
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
  Future<Response> listAppsV1ControllerRevisionForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/controllerrevisions';

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

  /// list or watch objects of kind ControllerRevision
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
  Future<IoK8sApiAppsV1ControllerRevisionList?> listAppsV1ControllerRevisionForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1ControllerRevisionForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ControllerRevisionList',) as IoK8sApiAppsV1ControllerRevisionList;
    
    }
    return null;
  }

  /// list or watch objects of kind DaemonSet
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
  Future<Response> listAppsV1DaemonSetForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/daemonsets';

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

  /// list or watch objects of kind DaemonSet
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
  Future<IoK8sApiAppsV1DaemonSetList?> listAppsV1DaemonSetForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1DaemonSetForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSetList',) as IoK8sApiAppsV1DaemonSetList;
    
    }
    return null;
  }

  /// list or watch objects of kind Deployment
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
  Future<Response> listAppsV1DeploymentForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/deployments';

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

  /// list or watch objects of kind Deployment
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
  Future<IoK8sApiAppsV1DeploymentList?> listAppsV1DeploymentForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1DeploymentForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DeploymentList',) as IoK8sApiAppsV1DeploymentList;
    
    }
    return null;
  }

  /// list or watch objects of kind ControllerRevision
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
  Future<Response> listAppsV1NamespacedControllerRevisionWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions'
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

  /// list or watch objects of kind ControllerRevision
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
  Future<IoK8sApiAppsV1ControllerRevisionList?> listAppsV1NamespacedControllerRevision(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1NamespacedControllerRevisionWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ControllerRevisionList',) as IoK8sApiAppsV1ControllerRevisionList;
    
    }
    return null;
  }

  /// list or watch objects of kind DaemonSet
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
  Future<Response> listAppsV1NamespacedDaemonSetWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets'
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

  /// list or watch objects of kind DaemonSet
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
  Future<IoK8sApiAppsV1DaemonSetList?> listAppsV1NamespacedDaemonSet(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1NamespacedDaemonSetWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSetList',) as IoK8sApiAppsV1DaemonSetList;
    
    }
    return null;
  }

  /// list or watch objects of kind Deployment
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
  Future<Response> listAppsV1NamespacedDeploymentWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments'
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

  /// list or watch objects of kind Deployment
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
  Future<IoK8sApiAppsV1DeploymentList?> listAppsV1NamespacedDeployment(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1NamespacedDeploymentWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DeploymentList',) as IoK8sApiAppsV1DeploymentList;
    
    }
    return null;
  }

  /// list or watch objects of kind ReplicaSet
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
  Future<Response> listAppsV1NamespacedReplicaSetWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets'
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

  /// list or watch objects of kind ReplicaSet
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
  Future<IoK8sApiAppsV1ReplicaSetList?> listAppsV1NamespacedReplicaSet(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1NamespacedReplicaSetWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSetList',) as IoK8sApiAppsV1ReplicaSetList;
    
    }
    return null;
  }

  /// list or watch objects of kind StatefulSet
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
  Future<Response> listAppsV1NamespacedStatefulSetWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets'
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

  /// list or watch objects of kind StatefulSet
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
  Future<IoK8sApiAppsV1StatefulSetList?> listAppsV1NamespacedStatefulSet(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1NamespacedStatefulSetWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSetList',) as IoK8sApiAppsV1StatefulSetList;
    
    }
    return null;
  }

  /// list or watch objects of kind ReplicaSet
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
  Future<Response> listAppsV1ReplicaSetForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/replicasets';

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

  /// list or watch objects of kind ReplicaSet
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
  Future<IoK8sApiAppsV1ReplicaSetList?> listAppsV1ReplicaSetForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1ReplicaSetForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSetList',) as IoK8sApiAppsV1ReplicaSetList;
    
    }
    return null;
  }

  /// list or watch objects of kind StatefulSet
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
  Future<Response> listAppsV1StatefulSetForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/statefulsets';

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

  /// list or watch objects of kind StatefulSet
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
  Future<IoK8sApiAppsV1StatefulSetList?> listAppsV1StatefulSetForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listAppsV1StatefulSetForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSetList',) as IoK8sApiAppsV1StatefulSetList;
    
    }
    return null;
  }

  /// partially update the specified ControllerRevision
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
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
  Future<Response> patchAppsV1NamespacedControllerRevisionWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}'
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

  /// partially update the specified ControllerRevision
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
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
  Future<IoK8sApiAppsV1ControllerRevision?> patchAppsV1NamespacedControllerRevision(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedControllerRevisionWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ControllerRevision',) as IoK8sApiAppsV1ControllerRevision;
    
    }
    return null;
  }

  /// partially update the specified DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<Response> patchAppsV1NamespacedDaemonSetWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}'
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

  /// partially update the specified DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<IoK8sApiAppsV1DaemonSet?> patchAppsV1NamespacedDaemonSet(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedDaemonSetWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// partially update status of the specified DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<Response> patchAppsV1NamespacedDaemonSetStatusWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}/status'
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

  /// partially update status of the specified DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<IoK8sApiAppsV1DaemonSet?> patchAppsV1NamespacedDaemonSetStatus(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedDaemonSetStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// partially update the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<Response> patchAppsV1NamespacedDeploymentWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}'
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

  /// partially update the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<IoK8sApiAppsV1Deployment?> patchAppsV1NamespacedDeployment(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedDeploymentWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// partially update scale of the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
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
  Future<Response> patchAppsV1NamespacedDeploymentScaleWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale'
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

  /// partially update scale of the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
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
  Future<IoK8sApiAutoscalingV1Scale?> patchAppsV1NamespacedDeploymentScale(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedDeploymentScaleWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// partially update status of the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<Response> patchAppsV1NamespacedDeploymentStatusWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}/status'
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

  /// partially update status of the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<IoK8sApiAppsV1Deployment?> patchAppsV1NamespacedDeploymentStatus(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedDeploymentStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// partially update the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<Response> patchAppsV1NamespacedReplicaSetWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}'
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

  /// partially update the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<IoK8sApiAppsV1ReplicaSet?> patchAppsV1NamespacedReplicaSet(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedReplicaSetWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// partially update scale of the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
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
  Future<Response> patchAppsV1NamespacedReplicaSetScaleWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/scale'
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

  /// partially update scale of the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
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
  Future<IoK8sApiAutoscalingV1Scale?> patchAppsV1NamespacedReplicaSetScale(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedReplicaSetScaleWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// partially update status of the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<Response> patchAppsV1NamespacedReplicaSetStatusWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/status'
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

  /// partially update status of the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<IoK8sApiAppsV1ReplicaSet?> patchAppsV1NamespacedReplicaSetStatus(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedReplicaSetStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// partially update the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<Response> patchAppsV1NamespacedStatefulSetWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}'
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

  /// partially update the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<IoK8sApiAppsV1StatefulSet?> patchAppsV1NamespacedStatefulSet(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedStatefulSetWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// partially update scale of the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
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
  Future<Response> patchAppsV1NamespacedStatefulSetScaleWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/scale'
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

  /// partially update scale of the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
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
  Future<IoK8sApiAutoscalingV1Scale?> patchAppsV1NamespacedStatefulSetScale(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedStatefulSetScaleWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// partially update status of the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<Response> patchAppsV1NamespacedStatefulSetStatusWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/status'
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

  /// partially update status of the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<IoK8sApiAppsV1StatefulSet?> patchAppsV1NamespacedStatefulSetStatus(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchAppsV1NamespacedStatefulSetStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// read the specified ControllerRevision
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedControllerRevisionWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}'
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

  /// read the specified ControllerRevision
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1ControllerRevision?> readAppsV1NamespacedControllerRevision(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedControllerRevisionWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ControllerRevision',) as IoK8sApiAppsV1ControllerRevision;
    
    }
    return null;
  }

  /// read the specified DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedDaemonSetWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}'
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

  /// read the specified DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1DaemonSet?> readAppsV1NamespacedDaemonSet(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedDaemonSetWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// read status of the specified DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedDaemonSetStatusWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}/status'
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

  /// read status of the specified DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1DaemonSet?> readAppsV1NamespacedDaemonSetStatus(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedDaemonSetStatusWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// read the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedDeploymentWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}'
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

  /// read the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1Deployment?> readAppsV1NamespacedDeployment(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedDeploymentWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// read scale of the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedDeploymentScaleWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale'
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

  /// read scale of the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAutoscalingV1Scale?> readAppsV1NamespacedDeploymentScale(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedDeploymentScaleWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// read status of the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedDeploymentStatusWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}/status'
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

  /// read status of the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1Deployment?> readAppsV1NamespacedDeploymentStatus(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedDeploymentStatusWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// read the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedReplicaSetWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}'
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

  /// read the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1ReplicaSet?> readAppsV1NamespacedReplicaSet(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedReplicaSetWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// read scale of the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedReplicaSetScaleWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/scale'
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

  /// read scale of the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAutoscalingV1Scale?> readAppsV1NamespacedReplicaSetScale(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedReplicaSetScaleWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// read status of the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedReplicaSetStatusWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/status'
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

  /// read status of the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1ReplicaSet?> readAppsV1NamespacedReplicaSetStatus(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedReplicaSetStatusWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// read the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedStatefulSetWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}'
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

  /// read the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1StatefulSet?> readAppsV1NamespacedStatefulSet(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedStatefulSetWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// read scale of the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedStatefulSetScaleWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/scale'
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

  /// read scale of the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAutoscalingV1Scale?> readAppsV1NamespacedStatefulSetScale(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedStatefulSetScaleWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// read status of the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readAppsV1NamespacedStatefulSetStatusWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/status'
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

  /// read status of the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAppsV1StatefulSet?> readAppsV1NamespacedStatefulSetStatus(String name, String namespace, { String? pretty, }) async {
    final response = await readAppsV1NamespacedStatefulSetStatusWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// replace the specified ControllerRevision
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ControllerRevision] body (required):
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
  Future<Response> replaceAppsV1NamespacedControllerRevisionWithHttpInfo(String name, String namespace, IoK8sApiAppsV1ControllerRevision body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/controllerrevisions/{name}'
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

  /// replace the specified ControllerRevision
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ControllerRevision] body (required):
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
  Future<IoK8sApiAppsV1ControllerRevision?> replaceAppsV1NamespacedControllerRevision(String name, String namespace, IoK8sApiAppsV1ControllerRevision body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedControllerRevisionWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ControllerRevision',) as IoK8sApiAppsV1ControllerRevision;
    
    }
    return null;
  }

  /// replace the specified DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1DaemonSet] body (required):
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
  Future<Response> replaceAppsV1NamespacedDaemonSetWithHttpInfo(String name, String namespace, IoK8sApiAppsV1DaemonSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}'
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

  /// replace the specified DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1DaemonSet] body (required):
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
  Future<IoK8sApiAppsV1DaemonSet?> replaceAppsV1NamespacedDaemonSet(String name, String namespace, IoK8sApiAppsV1DaemonSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedDaemonSetWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// replace status of the specified DaemonSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1DaemonSet] body (required):
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
  Future<Response> replaceAppsV1NamespacedDaemonSetStatusWithHttpInfo(String name, String namespace, IoK8sApiAppsV1DaemonSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/daemonsets/{name}/status'
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

  /// replace status of the specified DaemonSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1DaemonSet] body (required):
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
  Future<IoK8sApiAppsV1DaemonSet?> replaceAppsV1NamespacedDaemonSetStatus(String name, String namespace, IoK8sApiAppsV1DaemonSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedDaemonSetStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1DaemonSet',) as IoK8sApiAppsV1DaemonSet;
    
    }
    return null;
  }

  /// replace the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1Deployment] body (required):
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
  Future<Response> replaceAppsV1NamespacedDeploymentWithHttpInfo(String name, String namespace, IoK8sApiAppsV1Deployment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}'
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

  /// replace the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1Deployment] body (required):
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
  Future<IoK8sApiAppsV1Deployment?> replaceAppsV1NamespacedDeployment(String name, String namespace, IoK8sApiAppsV1Deployment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedDeploymentWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// replace scale of the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAutoscalingV1Scale] body (required):
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
  Future<Response> replaceAppsV1NamespacedDeploymentScaleWithHttpInfo(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}/scale'
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

  /// replace scale of the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAutoscalingV1Scale] body (required):
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
  Future<IoK8sApiAutoscalingV1Scale?> replaceAppsV1NamespacedDeploymentScale(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedDeploymentScaleWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// replace status of the specified Deployment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1Deployment] body (required):
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
  Future<Response> replaceAppsV1NamespacedDeploymentStatusWithHttpInfo(String name, String namespace, IoK8sApiAppsV1Deployment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/deployments/{name}/status'
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

  /// replace status of the specified Deployment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1Deployment] body (required):
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
  Future<IoK8sApiAppsV1Deployment?> replaceAppsV1NamespacedDeploymentStatus(String name, String namespace, IoK8sApiAppsV1Deployment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedDeploymentStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1Deployment',) as IoK8sApiAppsV1Deployment;
    
    }
    return null;
  }

  /// replace the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ReplicaSet] body (required):
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
  Future<Response> replaceAppsV1NamespacedReplicaSetWithHttpInfo(String name, String namespace, IoK8sApiAppsV1ReplicaSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}'
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

  /// replace the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ReplicaSet] body (required):
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
  Future<IoK8sApiAppsV1ReplicaSet?> replaceAppsV1NamespacedReplicaSet(String name, String namespace, IoK8sApiAppsV1ReplicaSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedReplicaSetWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// replace scale of the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAutoscalingV1Scale] body (required):
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
  Future<Response> replaceAppsV1NamespacedReplicaSetScaleWithHttpInfo(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/scale'
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

  /// replace scale of the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAutoscalingV1Scale] body (required):
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
  Future<IoK8sApiAutoscalingV1Scale?> replaceAppsV1NamespacedReplicaSetScale(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedReplicaSetScaleWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// replace status of the specified ReplicaSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ReplicaSet] body (required):
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
  Future<Response> replaceAppsV1NamespacedReplicaSetStatusWithHttpInfo(String name, String namespace, IoK8sApiAppsV1ReplicaSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/replicasets/{name}/status'
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

  /// replace status of the specified ReplicaSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1ReplicaSet] body (required):
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
  Future<IoK8sApiAppsV1ReplicaSet?> replaceAppsV1NamespacedReplicaSetStatus(String name, String namespace, IoK8sApiAppsV1ReplicaSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedReplicaSetStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1ReplicaSet',) as IoK8sApiAppsV1ReplicaSet;
    
    }
    return null;
  }

  /// replace the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1StatefulSet] body (required):
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
  Future<Response> replaceAppsV1NamespacedStatefulSetWithHttpInfo(String name, String namespace, IoK8sApiAppsV1StatefulSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}'
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

  /// replace the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1StatefulSet] body (required):
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
  Future<IoK8sApiAppsV1StatefulSet?> replaceAppsV1NamespacedStatefulSet(String name, String namespace, IoK8sApiAppsV1StatefulSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedStatefulSetWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// replace scale of the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAutoscalingV1Scale] body (required):
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
  Future<Response> replaceAppsV1NamespacedStatefulSetScaleWithHttpInfo(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/scale'
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

  /// replace scale of the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Scale
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAutoscalingV1Scale] body (required):
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
  Future<IoK8sApiAutoscalingV1Scale?> replaceAppsV1NamespacedStatefulSetScale(String name, String namespace, IoK8sApiAutoscalingV1Scale body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedStatefulSetScaleWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAutoscalingV1Scale',) as IoK8sApiAutoscalingV1Scale;
    
    }
    return null;
  }

  /// replace status of the specified StatefulSet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1StatefulSet] body (required):
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
  Future<Response> replaceAppsV1NamespacedStatefulSetStatusWithHttpInfo(String name, String namespace, IoK8sApiAppsV1StatefulSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/namespaces/{namespace}/statefulsets/{name}/status'
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

  /// replace status of the specified StatefulSet
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiAppsV1StatefulSet] body (required):
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
  Future<IoK8sApiAppsV1StatefulSet?> replaceAppsV1NamespacedStatefulSetStatus(String name, String namespace, IoK8sApiAppsV1StatefulSet body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceAppsV1NamespacedStatefulSetStatusWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAppsV1StatefulSet',) as IoK8sApiAppsV1StatefulSet;
    
    }
    return null;
  }

  /// watch individual changes to a list of ControllerRevision. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1ControllerRevisionListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/controllerrevisions';

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

  /// watch individual changes to a list of ControllerRevision. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1ControllerRevisionListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1ControllerRevisionListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of DaemonSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1DaemonSetListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/daemonsets';

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

  /// watch individual changes to a list of DaemonSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1DaemonSetListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1DaemonSetListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of Deployment. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1DeploymentListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/deployments';

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

  /// watch individual changes to a list of Deployment. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1DeploymentListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1DeploymentListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind ControllerRevision. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
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
  Future<Response> watchAppsV1NamespacedControllerRevisionWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/controllerrevisions/{name}'
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

  /// watch changes to an object of kind ControllerRevision. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ControllerRevision
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedControllerRevision(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedControllerRevisionWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ControllerRevision. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1NamespacedControllerRevisionListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/controllerrevisions'
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

  /// watch individual changes to a list of ControllerRevision. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedControllerRevisionList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedControllerRevisionListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind DaemonSet. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<Response> watchAppsV1NamespacedDaemonSetWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/daemonsets/{name}'
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

  /// watch changes to an object of kind DaemonSet. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the DaemonSet
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedDaemonSet(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedDaemonSetWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of DaemonSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1NamespacedDaemonSetListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/daemonsets'
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

  /// watch individual changes to a list of DaemonSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedDaemonSetList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedDaemonSetListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind Deployment. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<Response> watchAppsV1NamespacedDeploymentWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/deployments/{name}'
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

  /// watch changes to an object of kind Deployment. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the Deployment
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedDeployment(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedDeploymentWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of Deployment. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1NamespacedDeploymentListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/deployments'
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

  /// watch individual changes to a list of Deployment. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedDeploymentList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedDeploymentListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind ReplicaSet. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<Response> watchAppsV1NamespacedReplicaSetWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/replicasets/{name}'
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

  /// watch changes to an object of kind ReplicaSet. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the ReplicaSet
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedReplicaSet(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedReplicaSetWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ReplicaSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1NamespacedReplicaSetListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/replicasets'
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

  /// watch individual changes to a list of ReplicaSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedReplicaSetList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedReplicaSetListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind StatefulSet. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<Response> watchAppsV1NamespacedStatefulSetWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/statefulsets/{name}'
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

  /// watch changes to an object of kind StatefulSet. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StatefulSet
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedStatefulSet(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedStatefulSetWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of StatefulSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1NamespacedStatefulSetListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/namespaces/{namespace}/statefulsets'
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

  /// watch individual changes to a list of StatefulSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1NamespacedStatefulSetList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1NamespacedStatefulSetListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of ReplicaSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1ReplicaSetListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/replicasets';

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

  /// watch individual changes to a list of ReplicaSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1ReplicaSetListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1ReplicaSetListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of StatefulSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchAppsV1StatefulSetListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/apps/v1/watch/statefulsets';

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

  /// watch individual changes to a list of StatefulSet. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchAppsV1StatefulSetListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchAppsV1StatefulSetListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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
