import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PodStatus
void main() {
  final instance = IoK8sApiCoreV1PodStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PodStatus, () {
    // Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    // BuiltList<IoK8sApiCoreV1PodCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
    // BuiltList<IoK8sApiCoreV1ContainerStatus> containerStatuses
    test('to test the property `containerStatuses`', () async {
      // TODO
    });

    // Status for any ephemeral containers that have run in this pod.
    // BuiltList<IoK8sApiCoreV1ContainerStatus> ephemeralContainerStatuses
    test('to test the property `ephemeralContainerStatuses`', () async {
      // TODO
    });

    // IP address of the host to which the pod is assigned. Empty if not yet scheduled.
    // String hostIP
    test('to test the property `hostIP`', () async {
      // TODO
    });

    // The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
    // BuiltList<IoK8sApiCoreV1ContainerStatus> initContainerStatuses
    test('to test the property `initContainerStatuses`', () async {
      // TODO
    });

    // A human readable message indicating details about why the pod is in this condition.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
    // String nominatedNodeName
    test('to test the property `nominatedNodeName`', () async {
      // TODO
    });

    // The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:  Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.  More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase  
    // String phase
    test('to test the property `phase`', () async {
      // TODO
    });

    // IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
    // String podIP
    test('to test the property `podIP`', () async {
      // TODO
    });

    // podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
    // BuiltList<IoK8sApiCoreV1PodIP> podIPs
    test('to test the property `podIPs`', () async {
      // TODO
    });

    // The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md  
    // String qosClass
    test('to test the property `qosClass`', () async {
      // TODO
    });

    // A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime startTime
    test('to test the property `startTime`', () async {
      // TODO
    });

  });
}
