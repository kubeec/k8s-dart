# k8s.model.IoK8sApiCoreV1CSIPersistentVolumeSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**controllerExpandSecretRef** | [**IoK8sApiCoreV1SecretReference**](IoK8sApiCoreV1SecretReference.md) |  | [optional] 
**controllerPublishSecretRef** | [**IoK8sApiCoreV1SecretReference**](IoK8sApiCoreV1SecretReference.md) |  | [optional] 
**driver** | **String** | driver is the name of the driver to use for this volume. Required. | 
**fsType** | **String** | fsType to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". | [optional] 
**nodeExpandSecretRef** | [**IoK8sApiCoreV1SecretReference**](IoK8sApiCoreV1SecretReference.md) |  | [optional] 
**nodePublishSecretRef** | [**IoK8sApiCoreV1SecretReference**](IoK8sApiCoreV1SecretReference.md) |  | [optional] 
**nodeStageSecretRef** | [**IoK8sApiCoreV1SecretReference**](IoK8sApiCoreV1SecretReference.md) |  | [optional] 
**readOnly** | **bool** | readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write). | [optional] 
**volumeAttributes** | **Map<String, String>** | volumeAttributes of the volume to publish. | [optional] [default to const {}]
**volumeHandle** | **String** | volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


