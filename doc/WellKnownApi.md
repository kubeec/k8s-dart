# k8s.api.WellKnownApi

## Load the API package
```dart
import 'package:k8s/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getServiceAccountIssuerOpenIDConfiguration**](WellKnownApi.md#getserviceaccountissueropenidconfiguration) | **GET** /.well-known/openid-configuration/ | 


# **getServiceAccountIssuerOpenIDConfiguration**
> String getServiceAccountIssuerOpenIDConfiguration()



get service account issuer OpenID configuration, also known as the 'OIDC discovery doc'

### Example
```dart
import 'package:k8s/api.dart';
// TODO Configure API key authorization: BearerToken
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('BearerToken').apiKeyPrefix = 'Bearer';

final api_instance = WellKnownApi();

try {
    final result = api_instance.getServiceAccountIssuerOpenIDConfiguration();
    print(result);
} catch (e) {
    print('Exception when calling WellKnownApi->getServiceAccountIssuerOpenIDConfiguration: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

