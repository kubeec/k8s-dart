# k8s.model.IoK8sApiApiserverinternalV1alpha1ServerStorageVersion

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiServerID** | **String** | The ID of the reporting API server. | [optional] 
**decodableVersions** | **List<String>** | The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions. | [optional] [default to const []]
**encodingVersion** | **String** | The API server encodes the object to this version when persisting it in the backend (e.g., etcd). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


