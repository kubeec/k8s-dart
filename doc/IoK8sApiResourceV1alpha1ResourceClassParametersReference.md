# k8s.model.IoK8sApiResourceV1alpha1ResourceClassParametersReference

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiGroup** | **String** | APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources. | [optional] 
**kind** | **String** | Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata. | 
**name** | **String** | Name is the name of resource being referenced. | 
**namespace** | **String** | Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


