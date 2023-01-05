# k8s.model.IoK8sApiCoreV1VsphereVirtualDiskVolumeSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fsType** | **String** | fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. | [optional] 
**storagePolicyID** | **String** | storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName. | [optional] 
**storagePolicyName** | **String** | storagePolicyName is the storage Policy Based Management (SPBM) profile name. | [optional] 
**volumePath** | **String** | volumePath is the path that identifies vSphere volume vmdk | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


