# k8s.model.IoK8sApiCoreV1ScaleIOVolumeSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fsType** | **String** | fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\". | [optional] 
**gateway** | **String** | gateway is the host address of the ScaleIO API Gateway. | 
**protectionDomain** | **String** | protectionDomain is the name of the ScaleIO Protection Domain for the configured storage. | [optional] 
**readOnly** | **bool** | readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. | [optional] 
**secretRef** | [**IoK8sApiCoreV1LocalObjectReference**](IoK8sApiCoreV1LocalObjectReference.md) |  | 
**sslEnabled** | **bool** | sslEnabled Flag enable/disable SSL communication with Gateway, default false | [optional] 
**storageMode** | **String** | storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned. | [optional] 
**storagePool** | **String** | storagePool is the ScaleIO Storage Pool associated with the protection domain. | [optional] 
**system** | **String** | system is the name of the storage system as configured in ScaleIO. | 
**volumeName** | **String** | volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


