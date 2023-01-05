# k8s.model.IoK8sApimachineryPkgApisMetaV1OwnerReference

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiVersion** | **String** | API version of the referent. | 
**blockOwnerDeletion** | **bool** | If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned. | [optional] 
**controller** | **bool** | If true, this reference points to the managing controller. | [optional] 
**kind** | **String** | Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds | 
**name** | **String** | Name of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#names | 
**uid** | **String** | UID of the referent. More info: http://kubernetes.io/docs/user-guide/identifiers#uids | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


