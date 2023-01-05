//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of k8s;


class AuthenticationV1Api {
  AuthenticationV1Api([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// create a TokenReview
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiAuthenticationV1TokenReview] body (required):
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<Response> createAuthenticationV1TokenReviewWithHttpInfo(IoK8sApiAuthenticationV1TokenReview body, { String? dryRun, String? fieldManager, String? fieldValidation, String? pretty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/apis/authentication.k8s.io/v1/tokenreviews';

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dryRun != null) {
      queryParams.addAll(_queryParams('', 'dryRun', dryRun));
    }
    if (fieldManager != null) {
      queryParams.addAll(_queryParams('', 'fieldManager', fieldManager));
    }
    if (fieldValidation != null) {
      queryParams.addAll(_queryParams('', 'fieldValidation', fieldValidation));
    }
    if (pretty != null) {
      queryParams.addAll(_queryParams('', 'pretty', pretty));
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

  /// create a TokenReview
  ///
  /// Parameters:
  ///
  /// * [IoK8sApiAuthenticationV1TokenReview] body (required):
  ///
  /// * [String] dryRun:
  ///   When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
  ///
  /// * [String] fieldManager:
  ///   fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
  ///
  /// * [String] fieldValidation:
  ///   fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
  ///
  /// * [String] pretty:
  ///   If 'true', then the output is pretty printed.
  Future<IoK8sApiAuthenticationV1TokenReview?> createAuthenticationV1TokenReview(IoK8sApiAuthenticationV1TokenReview body, { String? dryRun, String? fieldManager, String? fieldValidation, String? pretty, }) async {
    final response = await createAuthenticationV1TokenReviewWithHttpInfo(body,  dryRun: dryRun, fieldManager: fieldManager, fieldValidation: fieldValidation, pretty: pretty, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IoK8sApiAuthenticationV1TokenReview',) as IoK8sApiAuthenticationV1TokenReview;
    
    }
    return null;
  }

  /// get available resources
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAuthenticationV1APIResourcesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/apis/authentication.k8s.io/v1/';

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
  Future<IoK8sApimachineryPkgApisMetaV1APIResourceList?> getAuthenticationV1APIResources() async {
    final response = await getAuthenticationV1APIResourcesWithHttpInfo();
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
}
