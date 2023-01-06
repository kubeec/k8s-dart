# k8s.model.IoK8sApiCoreV1NodeSpec

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configSource** | [**IoK8sApiCoreV1NodeConfigSource**](IoK8sApiCoreV1NodeConfigSource.md) |  | [optional] 
**externalID** | **String** | Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966 | [optional] 
**podCIDR** | **String** | PodCIDR represents the pod IP range assigned to the node. | [optional] 
**podCIDRs** | **BuiltList&lt;String&gt;** | podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6. | [optional] 
**providerID** | **String** | ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID> | [optional] 
**taints** | [**BuiltList&lt;IoK8sApiCoreV1Taint&gt;**](IoK8sApiCoreV1Taint.md) | If specified, the node's taints. | [optional] 
**unschedulable** | **bool** | Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


