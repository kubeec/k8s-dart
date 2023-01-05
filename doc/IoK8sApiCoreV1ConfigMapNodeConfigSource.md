# k8s.model.IoK8sApiCoreV1ConfigMapNodeConfigSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kubeletConfigKey** | **String** | KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the KubeletConfiguration structure This field is required in all cases. | 
**name** | **String** | Name is the metadata.name of the referenced ConfigMap. This field is required in all cases. | 
**namespace** | **String** | Namespace is the metadata.namespace of the referenced ConfigMap. This field is required in all cases. | 
**resourceVersion** | **String** | ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status. | [optional] 
**uid** | **String** | UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in Node.Spec, and required in Node.Status. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


