# k8s.model.IoK8sApiCoreV1ISCSIVolumeSource

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chapAuthDiscovery** | **bool** | chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication | [optional] 
**chapAuthSession** | **bool** | chapAuthSession defines whether support iSCSI Session CHAP authentication | [optional] 
**fsType** | **String** | fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi | [optional] 
**initiatorName** | **String** | initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection. | [optional] 
**iqn** | **String** | iqn is the target iSCSI Qualified Name. | 
**iscsiInterface** | **String** | iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp). | [optional] 
**lun** | **int** | lun represents iSCSI Target Lun number. | 
**portals** | **List<String>** | portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). | [optional] [default to const []]
**readOnly** | **bool** | readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. | [optional] 
**secretRef** | [**IoK8sApiCoreV1LocalObjectReference**](IoK8sApiCoreV1LocalObjectReference.md) |  | [optional] 
**targetPortal** | **String** | targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260). | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


