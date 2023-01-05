# k8s.model.IoK8sApiAuthorizationV1SubjectAccessReviewSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**extra** | [**Map<String, List<String>>**](List.md) | Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here. | [optional] [default to const {}]
**groups** | **List<String>** | Groups is the groups you're testing for. | [optional] [default to const []]
**nonResourceAttributes** | [**IoK8sApiAuthorizationV1NonResourceAttributes**](IoK8sApiAuthorizationV1NonResourceAttributes.md) |  | [optional] 
**resourceAttributes** | [**IoK8sApiAuthorizationV1ResourceAttributes**](IoK8sApiAuthorizationV1ResourceAttributes.md) |  | [optional] 
**uid** | **String** | UID information about the requesting user. | [optional] 
**user** | **String** | User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


