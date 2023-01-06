# k8s.model.IoK8sApiApiserverinternalV1alpha1StorageVersionStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commonEncodingVersion** | **String** | If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality. | [optional] 
**conditions** | [**BuiltList&lt;IoK8sApiApiserverinternalV1alpha1StorageVersionCondition&gt;**](IoK8sApiApiserverinternalV1alpha1StorageVersionCondition.md) | The latest available observations of the storageVersion's state. | [optional] 
**storageVersions** | [**BuiltList&lt;IoK8sApiApiserverinternalV1alpha1ServerStorageVersion&gt;**](IoK8sApiApiserverinternalV1alpha1ServerStorageVersion.md) | The reported versions per API server instance. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


