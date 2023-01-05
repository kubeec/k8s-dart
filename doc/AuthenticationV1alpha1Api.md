# k8s.api.AuthenticationV1alpha1Api

## Load the API package
```dart
import 'package:k8s/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAuthenticationV1alpha1SelfSubjectReview**](AuthenticationV1alpha1Api.md#createauthenticationv1alpha1selfsubjectreview) | **POST** /apis/authentication.k8s.io/v1alpha1/selfsubjectreviews | 
[**getAuthenticationV1alpha1APIResources**](AuthenticationV1alpha1Api.md#getauthenticationv1alpha1apiresources) | **GET** /apis/authentication.k8s.io/v1alpha1/ | 


# **createAuthenticationV1alpha1SelfSubjectReview**
> IoK8sApiAuthenticationV1alpha1SelfSubjectReview createAuthenticationV1alpha1SelfSubjectReview(body, dryRun, fieldManager, fieldValidation, pretty)



create a SelfSubjectReview

### Example
```dart
import 'package:k8s/api.dart';
// TODO Configure API key authorization: BearerToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKeyPrefix = 'Bearer';

final api_instance = AuthenticationV1alpha1Api();
final body = IoK8sApiAuthenticationV1alpha1SelfSubjectReview(); // IoK8sApiAuthenticationV1alpha1SelfSubjectReview | 
final dryRun = dryRun_example; // String | When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
final fieldManager = fieldManager_example; // String | fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
final fieldValidation = fieldValidation_example; // String | fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered.
final pretty = pretty_example; // String | If 'true', then the output is pretty printed.

try {
    final result = api_instance.createAuthenticationV1alpha1SelfSubjectReview(body, dryRun, fieldManager, fieldValidation, pretty);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationV1alpha1Api->createAuthenticationV1alpha1SelfSubjectReview: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IoK8sApiAuthenticationV1alpha1SelfSubjectReview**](IoK8sApiAuthenticationV1alpha1SelfSubjectReview.md)|  | 
 **dryRun** | **String**| When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed | [optional] 
 **fieldManager** | **String**| fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. | [optional] 
 **fieldValidation** | **String**| fieldValidation instructs the server on how to handle objects in the request (POST/PUT/PATCH) containing unknown or duplicate fields, provided that the `ServerSideFieldValidation` feature gate is also enabled. Valid values are: - Ignore: This will ignore any unknown fields that are silently dropped from the object, and will ignore all but the last duplicate field that the decoder encounters. This is the default behavior prior to v1.23 and is the default behavior when the `ServerSideFieldValidation` feature gate is disabled. - Warn: This will send a warning via the standard warning response header for each unknown field that is dropped from the object, and for each duplicate field that is encountered. The request will still succeed if there are no other errors, and will only persist the last of any duplicate fields. This is the default when the `ServerSideFieldValidation` feature gate is enabled. - Strict: This will fail the request with a BadRequest error if any unknown fields would be dropped from the object, or if any duplicate fields are present. The error returned from the server will contain all unknown and duplicate fields encountered. | [optional] 
 **pretty** | **String**| If 'true', then the output is pretty printed. | [optional] 

### Return type

[**IoK8sApiAuthenticationV1alpha1SelfSubjectReview**](IoK8sApiAuthenticationV1alpha1SelfSubjectReview.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticationV1alpha1APIResources**
> IoK8sApimachineryPkgApisMetaV1APIResourceList getAuthenticationV1alpha1APIResources()



get available resources

### Example
```dart
import 'package:k8s/api.dart';
// TODO Configure API key authorization: BearerToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKeyPrefix = 'Bearer';

final api_instance = AuthenticationV1alpha1Api();

try {
    final result = api_instance.getAuthenticationV1alpha1APIResources();
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationV1alpha1Api->getAuthenticationV1alpha1APIResources: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IoK8sApimachineryPkgApisMetaV1APIResourceList**](IoK8sApimachineryPkgApisMetaV1APIResourceList.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml, application/vnd.kubernetes.protobuf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

