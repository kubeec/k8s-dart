# k8s.model.IoK8sApiCoreV1CSIVolumeSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**driver** | **String** | driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster. | 
**fsType** | **String** | fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply. | [optional] 
**nodePublishSecretRef** | [**IoK8sApiCoreV1LocalObjectReference**](IoK8sApiCoreV1LocalObjectReference.md) |  | [optional] 
**readOnly** | **bool** | readOnly specifies a read-only configuration for the volume. Defaults to false (read/write). | [optional] 
**volumeAttributes** | **Map<String, String>** | volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


