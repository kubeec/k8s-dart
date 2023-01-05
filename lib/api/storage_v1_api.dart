//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;


class StorageV1Api {
  StorageV1Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// create a CSIDriver
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1CSIDriver] body (required):
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
  Future<Response> createStorageV1CSIDriverWithHttpInfo(IoK8sApiStorageV1CSIDriver body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers';

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

  /// create a CSIDriver
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1CSIDriver] body (required):
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
  Future<IoK8sApiStorageV1CSIDriver?> createStorageV1CSIDriver(IoK8sApiStorageV1CSIDriver body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createStorageV1CSIDriverWithHttpInfo(body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIDriver',) as IoK8sApiStorageV1CSIDriver;
    
    }
    return null;
  }

  /// create a CSINode
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1CSINode] body (required):
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
  Future<Response> createStorageV1CSINodeWithHttpInfo(IoK8sApiStorageV1CSINode body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes';

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

  /// create a CSINode
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1CSINode] body (required):
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
  Future<IoK8sApiStorageV1CSINode?> createStorageV1CSINode(IoK8sApiStorageV1CSINode body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createStorageV1CSINodeWithHttpInfo(body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSINode',) as IoK8sApiStorageV1CSINode;
    
    }
    return null;
  }

  /// create a CSIStorageCapacity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiStorageV1CSIStorageCapacity] body (required):
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
  Future<Response> createStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String namespace, IoK8sApiStorageV1CSIStorageCapacity body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities'
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

  /// create a CSIStorageCapacity
  ///
  /// Parameters:
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiStorageV1CSIStorageCapacity] body (required):
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
  Future<IoK8sApiStorageV1CSIStorageCapacity?> createStorageV1NamespacedCSIStorageCapacity(String namespace, IoK8sApiStorageV1CSIStorageCapacity body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createStorageV1NamespacedCSIStorageCapacityWithHttpInfo(namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIStorageCapacity',) as IoK8sApiStorageV1CSIStorageCapacity;
    
    }
    return null;
  }

  /// create a StorageClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1StorageClass] body (required):
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
  Future<Response> createStorageV1StorageClassWithHttpInfo(IoK8sApiStorageV1StorageClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses';

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

  /// create a StorageClass
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1StorageClass] body (required):
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
  Future<IoK8sApiStorageV1StorageClass?> createStorageV1StorageClass(IoK8sApiStorageV1StorageClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createStorageV1StorageClassWithHttpInfo(body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1StorageClass',) as IoK8sApiStorageV1StorageClass;
    
    }
    return null;
  }

  /// create a VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1VolumeAttachment] body (required):
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
  Future<Response> createStorageV1VolumeAttachmentWithHttpInfo(IoK8sApiStorageV1VolumeAttachment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments';

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

  /// create a VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiStorageV1VolumeAttachment] body (required):
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
  Future<IoK8sApiStorageV1VolumeAttachment?> createStorageV1VolumeAttachment(IoK8sApiStorageV1VolumeAttachment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await createStorageV1VolumeAttachmentWithHttpInfo(body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// delete a CSIDriver
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
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
  Future<Response> deleteStorageV1CSIDriverWithHttpInfo(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers/{name}'
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

  /// delete a CSIDriver
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
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
  Future<IoK8sApiStorageV1CSIDriver?> deleteStorageV1CSIDriver(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CSIDriverWithHttpInfo(name,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIDriver',) as IoK8sApiStorageV1CSIDriver;
    
    }
    return null;
  }

  /// delete a CSINode
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
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
  Future<Response> deleteStorageV1CSINodeWithHttpInfo(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes/{name}'
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

  /// delete a CSINode
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
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
  Future<IoK8sApiStorageV1CSINode?> deleteStorageV1CSINode(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CSINodeWithHttpInfo(name,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSINode',) as IoK8sApiStorageV1CSINode;
    
    }
    return null;
  }

  /// delete collection of CSIDriver
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
  Future<Response> deleteStorageV1CollectionCSIDriverWithHttpInfo({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers';

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

  /// delete collection of CSIDriver
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteStorageV1CollectionCSIDriver({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CollectionCSIDriverWithHttpInfo( pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of CSINode
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
  Future<Response> deleteStorageV1CollectionCSINodeWithHttpInfo({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes';

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

  /// delete collection of CSINode
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteStorageV1CollectionCSINode({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CollectionCSINodeWithHttpInfo( pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of CSIStorageCapacity
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
  Future<Response> deleteStorageV1CollectionNamespacedCSIStorageCapacityWithHttpInfo(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities'
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

  /// delete collection of CSIStorageCapacity
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteStorageV1CollectionNamespacedCSIStorageCapacity(String namespace, { String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CollectionNamespacedCSIStorageCapacityWithHttpInfo(namespace,  pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of StorageClass
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
  Future<Response> deleteStorageV1CollectionStorageClassWithHttpInfo({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses';

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

  /// delete collection of StorageClass
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteStorageV1CollectionStorageClass({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CollectionStorageClassWithHttpInfo( pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete collection of VolumeAttachment
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
  Future<Response> deleteStorageV1CollectionVolumeAttachmentWithHttpInfo({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments';

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

  /// delete collection of VolumeAttachment
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteStorageV1CollectionVolumeAttachment({ String? pretty, String? continue_, String? dryRun, String? fieldSelector, int? gracePeriodSeconds, String? labelSelector, int? limit, bool? orphanDependents, String? propagationPolicy, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1CollectionVolumeAttachmentWithHttpInfo( pretty: pretty, continue_: continue_, dryRun: dryRun, fieldSelector: fieldSelector, gracePeriodSeconds: gracePeriodSeconds, labelSelector: labelSelector, limit: limit, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, body: body, );
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

  /// delete a CSIStorageCapacity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
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
  Future<Response> deleteStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities/{name}'
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

  /// delete a CSIStorageCapacity
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
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
  Future<IoK8sApimachineryPkgApisMetaV1Status?> deleteStorageV1NamespacedCSIStorageCapacity(String name, String namespace, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1NamespacedCSIStorageCapacityWithHttpInfo(name, namespace,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
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

  /// delete a StorageClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
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
  Future<Response> deleteStorageV1StorageClassWithHttpInfo(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses/{name}'
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

  /// delete a StorageClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
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
  Future<IoK8sApiStorageV1StorageClass?> deleteStorageV1StorageClass(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1StorageClassWithHttpInfo(name,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1StorageClass',) as IoK8sApiStorageV1StorageClass;
    
    }
    return null;
  }

  /// delete a VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<Response> deleteStorageV1VolumeAttachmentWithHttpInfo(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}'
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

  /// delete a VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<IoK8sApiStorageV1VolumeAttachment?> deleteStorageV1VolumeAttachment(String name, { String? pretty, String? dryRun, int? gracePeriodSeconds, bool? orphanDependents, String? propagationPolicy, IoK8sApimachineryPkgApisMetaV1DeleteOptions? body, }) async {
    final response = await deleteStorageV1VolumeAttachmentWithHttpInfo(name,  pretty: pretty, dryRun: dryRun, gracePeriodSeconds: gracePeriodSeconds, orphanDependents: orphanDependents, propagationPolicy: propagationPolicy, body: body, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// get available resources
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getStorageV1APIResourcesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/';

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
  Future<IoK8sApimachineryPkgApisMetaV1APIResourceList?> getStorageV1APIResources() async {
    final response = await getStorageV1APIResourcesWithHttpInfo();
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

  /// list or watch objects of kind CSIDriver
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
  Future<Response> listStorageV1CSIDriverWithHttpInfo({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers';

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

  /// list or watch objects of kind CSIDriver
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
  Future<IoK8sApiStorageV1CSIDriverList?> listStorageV1CSIDriver({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listStorageV1CSIDriverWithHttpInfo( pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIDriverList',) as IoK8sApiStorageV1CSIDriverList;
    
    }
    return null;
  }

  /// list or watch objects of kind CSINode
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
  Future<Response> listStorageV1CSINodeWithHttpInfo({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes';

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

  /// list or watch objects of kind CSINode
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
  Future<IoK8sApiStorageV1CSINodeList?> listStorageV1CSINode({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listStorageV1CSINodeWithHttpInfo( pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSINodeList',) as IoK8sApiStorageV1CSINodeList;
    
    }
    return null;
  }

  /// list or watch objects of kind CSIStorageCapacity
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
  Future<Response> listStorageV1CSIStorageCapacityForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csistoragecapacities';

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

  /// list or watch objects of kind CSIStorageCapacity
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
  Future<IoK8sApiStorageV1CSIStorageCapacityList?> listStorageV1CSIStorageCapacityForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listStorageV1CSIStorageCapacityForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIStorageCapacityList',) as IoK8sApiStorageV1CSIStorageCapacityList;
    
    }
    return null;
  }

  /// list or watch objects of kind CSIStorageCapacity
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
  Future<Response> listStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities'
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

  /// list or watch objects of kind CSIStorageCapacity
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
  Future<IoK8sApiStorageV1CSIStorageCapacityList?> listStorageV1NamespacedCSIStorageCapacity(String namespace, { String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listStorageV1NamespacedCSIStorageCapacityWithHttpInfo(namespace,  pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIStorageCapacityList',) as IoK8sApiStorageV1CSIStorageCapacityList;
    
    }
    return null;
  }

  /// list or watch objects of kind StorageClass
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
  Future<Response> listStorageV1StorageClassWithHttpInfo({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses';

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

  /// list or watch objects of kind StorageClass
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
  Future<IoK8sApiStorageV1StorageClassList?> listStorageV1StorageClass({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listStorageV1StorageClassWithHttpInfo( pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1StorageClassList',) as IoK8sApiStorageV1StorageClassList;
    
    }
    return null;
  }

  /// list or watch objects of kind VolumeAttachment
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
  Future<Response> listStorageV1VolumeAttachmentWithHttpInfo({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments';

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

  /// list or watch objects of kind VolumeAttachment
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
  Future<IoK8sApiStorageV1VolumeAttachmentList?> listStorageV1VolumeAttachment({ String? pretty, bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await listStorageV1VolumeAttachmentWithHttpInfo( pretty: pretty, allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachmentList',) as IoK8sApiStorageV1VolumeAttachmentList;
    
    }
    return null;
  }

  /// partially update the specified CSIDriver
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
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
  Future<Response> patchStorageV1CSIDriverWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers/{name}'
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

  /// partially update the specified CSIDriver
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
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
  Future<IoK8sApiStorageV1CSIDriver?> patchStorageV1CSIDriver(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchStorageV1CSIDriverWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIDriver',) as IoK8sApiStorageV1CSIDriver;
    
    }
    return null;
  }

  /// partially update the specified CSINode
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
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
  Future<Response> patchStorageV1CSINodeWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes/{name}'
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

  /// partially update the specified CSINode
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
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
  Future<IoK8sApiStorageV1CSINode?> patchStorageV1CSINode(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchStorageV1CSINodeWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSINode',) as IoK8sApiStorageV1CSINode;
    
    }
    return null;
  }

  /// partially update the specified CSIStorageCapacity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
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
  Future<Response> patchStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities/{name}'
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

  /// partially update the specified CSIStorageCapacity
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
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
  Future<IoK8sApiStorageV1CSIStorageCapacity?> patchStorageV1NamespacedCSIStorageCapacity(String name, String namespace, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchStorageV1NamespacedCSIStorageCapacityWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIStorageCapacity',) as IoK8sApiStorageV1CSIStorageCapacity;
    
    }
    return null;
  }

  /// partially update the specified StorageClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
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
  Future<Response> patchStorageV1StorageClassWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses/{name}'
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

  /// partially update the specified StorageClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
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
  Future<IoK8sApiStorageV1StorageClass?> patchStorageV1StorageClass(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchStorageV1StorageClassWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1StorageClass',) as IoK8sApiStorageV1StorageClass;
    
    }
    return null;
  }

  /// partially update the specified VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<Response> patchStorageV1VolumeAttachmentWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}'
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

  /// partially update the specified VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<IoK8sApiStorageV1VolumeAttachment?> patchStorageV1VolumeAttachment(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchStorageV1VolumeAttachmentWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// partially update status of the specified VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<Response> patchStorageV1VolumeAttachmentStatusWithHttpInfo(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}/status'
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

  /// partially update status of the specified VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<IoK8sApiStorageV1VolumeAttachment?> patchStorageV1VolumeAttachmentStatus(String name, Object body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, bool? force, }) async {
    final response = await patchStorageV1VolumeAttachmentStatusWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, force: force, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// read the specified CSIDriver
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readStorageV1CSIDriverWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers/{name}'
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

  /// read the specified CSIDriver
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiStorageV1CSIDriver?> readStorageV1CSIDriver(String name, { String? pretty, }) async {
    final response = await readStorageV1CSIDriverWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIDriver',) as IoK8sApiStorageV1CSIDriver;
    
    }
    return null;
  }

  /// read the specified CSINode
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readStorageV1CSINodeWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes/{name}'
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

  /// read the specified CSINode
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiStorageV1CSINode?> readStorageV1CSINode(String name, { String? pretty, }) async {
    final response = await readStorageV1CSINodeWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSINode',) as IoK8sApiStorageV1CSINode;
    
    }
    return null;
  }

  /// read the specified CSIStorageCapacity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String name, String namespace, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities/{name}'
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

  /// read the specified CSIStorageCapacity
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiStorageV1CSIStorageCapacity?> readStorageV1NamespacedCSIStorageCapacity(String name, String namespace, { String? pretty, }) async {
    final response = await readStorageV1NamespacedCSIStorageCapacityWithHttpInfo(name, namespace,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIStorageCapacity',) as IoK8sApiStorageV1CSIStorageCapacity;
    
    }
    return null;
  }

  /// read the specified StorageClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readStorageV1StorageClassWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses/{name}'
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

  /// read the specified StorageClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiStorageV1StorageClass?> readStorageV1StorageClass(String name, { String? pretty, }) async {
    final response = await readStorageV1StorageClassWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1StorageClass',) as IoK8sApiStorageV1StorageClass;
    
    }
    return null;
  }

  /// read the specified VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readStorageV1VolumeAttachmentWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}'
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

  /// read the specified VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiStorageV1VolumeAttachment?> readStorageV1VolumeAttachment(String name, { String? pretty, }) async {
    final response = await readStorageV1VolumeAttachmentWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// read status of the specified VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> readStorageV1VolumeAttachmentStatusWithHttpInfo(String name, { String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}/status'
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

  /// read status of the specified VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiStorageV1VolumeAttachment?> readStorageV1VolumeAttachmentStatus(String name, { String? pretty, }) async {
    final response = await readStorageV1VolumeAttachmentStatusWithHttpInfo(name,  pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// replace the specified CSIDriver
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
  ///
  /// * [IoK8sApiStorageV1CSIDriver] body (required):
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
  Future<Response> replaceStorageV1CSIDriverWithHttpInfo(String name, IoK8sApiStorageV1CSIDriver body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csidrivers/{name}'
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

  /// replace the specified CSIDriver
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
  ///
  /// * [IoK8sApiStorageV1CSIDriver] body (required):
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
  Future<IoK8sApiStorageV1CSIDriver?> replaceStorageV1CSIDriver(String name, IoK8sApiStorageV1CSIDriver body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceStorageV1CSIDriverWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIDriver',) as IoK8sApiStorageV1CSIDriver;
    
    }
    return null;
  }

  /// replace the specified CSINode
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
  ///
  /// * [IoK8sApiStorageV1CSINode] body (required):
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
  Future<Response> replaceStorageV1CSINodeWithHttpInfo(String name, IoK8sApiStorageV1CSINode body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/csinodes/{name}'
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

  /// replace the specified CSINode
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
  ///
  /// * [IoK8sApiStorageV1CSINode] body (required):
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
  Future<IoK8sApiStorageV1CSINode?> replaceStorageV1CSINode(String name, IoK8sApiStorageV1CSINode body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceStorageV1CSINodeWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSINode',) as IoK8sApiStorageV1CSINode;
    
    }
    return null;
  }

  /// replace the specified CSIStorageCapacity
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiStorageV1CSIStorageCapacity] body (required):
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
  Future<Response> replaceStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String name, String namespace, IoK8sApiStorageV1CSIStorageCapacity body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/namespaces/{namespace}/csistoragecapacities/{name}'
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

  /// replace the specified CSIStorageCapacity
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
  ///
  /// * [String] namespace (required):
  ///   object name and auth scope, such as for teams and projects
  ///
  /// * [IoK8sApiStorageV1CSIStorageCapacity] body (required):
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
  Future<IoK8sApiStorageV1CSIStorageCapacity?> replaceStorageV1NamespacedCSIStorageCapacity(String name, String namespace, IoK8sApiStorageV1CSIStorageCapacity body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceStorageV1NamespacedCSIStorageCapacityWithHttpInfo(name, namespace, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1CSIStorageCapacity',) as IoK8sApiStorageV1CSIStorageCapacity;
    
    }
    return null;
  }

  /// replace the specified StorageClass
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
  ///
  /// * [IoK8sApiStorageV1StorageClass] body (required):
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
  Future<Response> replaceStorageV1StorageClassWithHttpInfo(String name, IoK8sApiStorageV1StorageClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/storageclasses/{name}'
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

  /// replace the specified StorageClass
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
  ///
  /// * [IoK8sApiStorageV1StorageClass] body (required):
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
  Future<IoK8sApiStorageV1StorageClass?> replaceStorageV1StorageClass(String name, IoK8sApiStorageV1StorageClass body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceStorageV1StorageClassWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1StorageClass',) as IoK8sApiStorageV1StorageClass;
    
    }
    return null;
  }

  /// replace the specified VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [IoK8sApiStorageV1VolumeAttachment] body (required):
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
  Future<Response> replaceStorageV1VolumeAttachmentWithHttpInfo(String name, IoK8sApiStorageV1VolumeAttachment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}'
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

  /// replace the specified VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [IoK8sApiStorageV1VolumeAttachment] body (required):
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
  Future<IoK8sApiStorageV1VolumeAttachment?> replaceStorageV1VolumeAttachment(String name, IoK8sApiStorageV1VolumeAttachment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceStorageV1VolumeAttachmentWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// replace status of the specified VolumeAttachment
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [IoK8sApiStorageV1VolumeAttachment] body (required):
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
  Future<Response> replaceStorageV1VolumeAttachmentStatusWithHttpInfo(String name, IoK8sApiStorageV1VolumeAttachment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/volumeattachments/{name}/status'
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

  /// replace status of the specified VolumeAttachment
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
  ///
  /// * [IoK8sApiStorageV1VolumeAttachment] body (required):
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
  Future<IoK8sApiStorageV1VolumeAttachment?> replaceStorageV1VolumeAttachmentStatus(String name, IoK8sApiStorageV1VolumeAttachment body, { String? pretty, String? dryRun, String? fieldManager, String? fieldValidation, }) async {
    final response = await replaceStorageV1VolumeAttachmentStatusWithHttpInfo(name, body,  pretty: pretty, dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiStorageV1VolumeAttachment',) as IoK8sApiStorageV1VolumeAttachment;
    
    }
    return null;
  }

  /// watch changes to an object of kind CSIDriver. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
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
  Future<Response> watchStorageV1CSIDriverWithHttpInfo(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/csidrivers/{name}'
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

  /// watch changes to an object of kind CSIDriver. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIDriver
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1CSIDriver(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1CSIDriverWithHttpInfo(name,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of CSIDriver. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchStorageV1CSIDriverListWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/csidrivers';

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

  /// watch individual changes to a list of CSIDriver. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1CSIDriverList({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1CSIDriverListWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind CSINode. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
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
  Future<Response> watchStorageV1CSINodeWithHttpInfo(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/csinodes/{name}'
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

  /// watch changes to an object of kind CSINode. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSINode
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1CSINode(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1CSINodeWithHttpInfo(name,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of CSINode. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchStorageV1CSINodeListWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/csinodes';

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

  /// watch individual changes to a list of CSINode. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1CSINodeList({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1CSINodeListWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchStorageV1CSIStorageCapacityListForAllNamespacesWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/csistoragecapacities';

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

  /// watch individual changes to a list of CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1CSIStorageCapacityListForAllNamespaces({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1CSIStorageCapacityListForAllNamespacesWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
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
  Future<Response> watchStorageV1NamespacedCSIStorageCapacityWithHttpInfo(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/namespaces/{namespace}/csistoragecapacities/{name}'
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

  /// watch changes to an object of kind CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the CSIStorageCapacity
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1NamespacedCSIStorageCapacity(String name, String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1NamespacedCSIStorageCapacityWithHttpInfo(name, namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchStorageV1NamespacedCSIStorageCapacityListWithHttpInfo(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/namespaces/{namespace}/csistoragecapacities'
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

  /// watch individual changes to a list of CSIStorageCapacity. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1NamespacedCSIStorageCapacityList(String namespace, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1NamespacedCSIStorageCapacityListWithHttpInfo(namespace,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind StorageClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
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
  Future<Response> watchStorageV1StorageClassWithHttpInfo(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/storageclasses/{name}'
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

  /// watch changes to an object of kind StorageClass. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the StorageClass
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1StorageClass(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1StorageClassWithHttpInfo(name,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of StorageClass. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchStorageV1StorageClassListWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/storageclasses';

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

  /// watch individual changes to a list of StorageClass. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1StorageClassList({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1StorageClassListWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch changes to an object of kind VolumeAttachment. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<Response> watchStorageV1VolumeAttachmentWithHttpInfo(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/volumeattachments/{name}'
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

  /// watch changes to an object of kind VolumeAttachment. deprecated: use the 'watch' parameter with a list operation instead, filtered to a single item with the 'fieldSelector' parameter.
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   name of the VolumeAttachment
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1VolumeAttachment(String name, { bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1VolumeAttachmentWithHttpInfo(name,  allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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

  /// watch individual changes to a list of VolumeAttachment. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<Response> watchStorageV1VolumeAttachmentListWithHttpInfo({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/storage.k8s.io/v1/watch/volumeattachments';

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

  /// watch individual changes to a list of VolumeAttachment. deprecated: use the 'watch' parameter with a list operation instead.
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
  Future<IoK8sApimachineryPkgApisMetaV1WatchEvent?> watchStorageV1VolumeAttachmentList({ bool? allowWatchBookmarks, String? continue_, String? fieldSelector, String? labelSelector, int? limit, String? pretty, String? resourceVersion, String? resourceVersionMatch, int? timeoutSeconds, bool? watch, }) async {
    final response = await watchStorageV1VolumeAttachmentListWithHttpInfo( allowWatchBookmarks: allowWatchBookmarks, continue_: continue_, fieldSelector: fieldSelector, labelSelector: labelSelector, limit: limit, pretty: pretty, resourceVersion: resourceVersion, resourceVersionMatch: resourceVersionMatch, timeoutSeconds: timeoutSeconds, watch: watch, );
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
