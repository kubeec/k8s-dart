# k8s.model.IoK8sApiStorageV1VolumeAttachmentSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attacher** | **String** | Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName(). | 
**nodeName** | **String** | The node that the volume should be attached to. | 
**source_** | [**IoK8sApiStorageV1VolumeAttachmentSource**](IoK8sApiStorageV1VolumeAttachmentSource.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


