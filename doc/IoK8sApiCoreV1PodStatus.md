# k8s.model.IoK8sApiCoreV1PodStatus

## Load the model package
```dart
import 'package:k8s/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [**BuiltList&lt;IoK8sApiCoreV1PodCondition&gt;**](IoK8sApiCoreV1PodCondition.md) | Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions | [optional] 
**containerStatuses** | [**BuiltList&lt;IoK8sApiCoreV1ContainerStatus&gt;**](IoK8sApiCoreV1ContainerStatus.md) | The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status | [optional] 
**ephemeralContainerStatuses** | [**BuiltList&lt;IoK8sApiCoreV1ContainerStatus&gt;**](IoK8sApiCoreV1ContainerStatus.md) | Status for any ephemeral containers that have run in this pod. | [optional] 
**hostIP** | **String** | IP address of the host to which the pod is assigned. Empty if not yet scheduled. | [optional] 
**initContainerStatuses** | [**BuiltList&lt;IoK8sApiCoreV1ContainerStatus&gt;**](IoK8sApiCoreV1ContainerStatus.md) | The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status | [optional] 
**message** | **String** | A human readable message indicating details about why the pod is in this condition. | [optional] 
**nominatedNodeName** | **String** | nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled. | [optional] 
**phase** | **String** | The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:  Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.  More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase   | [optional] 
**podIP** | **String** | IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated. | [optional] 
**podIPs** | [**BuiltList&lt;IoK8sApiCoreV1PodIP&gt;**](IoK8sApiCoreV1PodIP.md) | podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet. | [optional] 
**qosClass** | **String** | The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md   | [optional] 
**reason** | **String** | A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted' | [optional] 
**startTime** | [**DateTime**](DateTime.md) | Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


