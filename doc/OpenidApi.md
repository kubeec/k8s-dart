# k8s.api.OpenidApi

## Load the API package
```dart
import 'package:k8s/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getServiceAccountIssuerOpenIDKeyset**](OpenidApi.md#getserviceaccountissueropenidkeyset) | **GET** /openid/v1/jwks/ | 


# **getServiceAccountIssuerOpenIDKeyset**
> String getServiceAccountIssuerOpenIDKeyset()



get service account issuer OpenID JSON Web Key Set (contains public token verification keys)

### Example
```dart
import 'package:k8s/api.dart';
// TODO Configure API key authorization: BearerToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKeyPrefix = 'Bearer';

final api = K8s().getOpenidApi();

try {
    final response = api.getServiceAccountIssuerOpenIDKeyset();
    print(response);
} catch on DioError (e) {
    print('Exception when calling OpenidApi->getServiceAccountIssuerOpenIDKeyset: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/jwk-set+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

