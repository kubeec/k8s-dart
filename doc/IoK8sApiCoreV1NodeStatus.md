# k8s.model.IoK8sApiCoreV1NodeStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addresses** | [**List<IoK8sApiCoreV1NodeAddress>**](IoK8sApiCoreV1NodeAddress.md) | List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. | [optional] [default to const []]
**allocatable** | **Map<String, String>** | Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity. | [optional] [default to const {}]
**capacity** | **Map<String, String>** | Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity | [optional] [default to const {}]
**conditions** | [**List<IoK8sApiCoreV1NodeCondition>**](IoK8sApiCoreV1NodeCondition.md) | Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition | [optional] [default to const []]
**config** | [**IoK8sApiCoreV1NodeConfigStatus**](IoK8sApiCoreV1NodeConfigStatus.md) |  | [optional] 
**daemonEndpoints** | [**IoK8sApiCoreV1NodeDaemonEndpoints**](IoK8sApiCoreV1NodeDaemonEndpoints.md) |  | [optional] 
**images** | [**List<IoK8sApiCoreV1ContainerImage>**](IoK8sApiCoreV1ContainerImage.md) | List of container images on this node | [optional] [default to const []]
**nodeInfo** | [**IoK8sApiCoreV1NodeSystemInfo**](IoK8sApiCoreV1NodeSystemInfo.md) |  | [optional] 
**phase** | **String** | NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.   | [optional] 
**volumesAttached** | [**List<IoK8sApiCoreV1AttachedVolume>**](IoK8sApiCoreV1AttachedVolume.md) | List of volumes that are attached to the node. | [optional] [default to const []]
**volumesInUse** | **List<String>** | List of attachable volumes in use (mounted) by the node. | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


