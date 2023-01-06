# k8s.model.IoK8sApiStorageV1VolumeAttachmentStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachError** | [**IoK8sApiStorageV1VolumeError**](IoK8sApiStorageV1VolumeError.md) |  | [optional] 
**attached** | **bool** | Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher. | 
**attachmentMetadata** | **BuiltMap&lt;String, String&gt;** | Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher. | [optional] 
**detachError** | [**IoK8sApiStorageV1VolumeError**](IoK8sApiStorageV1VolumeError.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


