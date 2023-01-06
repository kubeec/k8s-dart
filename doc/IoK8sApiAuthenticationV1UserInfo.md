# k8s.model.IoK8sApiAuthenticationV1UserInfo

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extra** | [**BuiltMap&lt;String, BuiltList&lt;String&gt;&gt;**](BuiltList.md) | Any additional information provided by the authenticator. | [optional] 
**groups** | **BuiltList&lt;String&gt;** | The names of groups this user is a part of. | [optional] 
**uid** | **String** | A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs. | [optional] 
**username** | **String** | The name that uniquely identifies this user among all active users. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


