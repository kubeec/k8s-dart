import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeStatus
void main() {
  final instance = IoK8sApiCoreV1NodeStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeStatus, () {
    // List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example.
    // BuiltList<IoK8sApiCoreV1NodeAddress> addresses
    test('to test the property `addresses`', () async {
      // TODO
    });

    // Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    // BuiltMap<String, String> allocatable
    test('to test the property `allocatable`', () async {
      // TODO
    });

    // Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    // BuiltMap<String, String> capacity
    test('to test the property `capacity`', () async {
      // TODO
    });

    // Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
    // BuiltList<IoK8sApiCoreV1NodeCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeConfigStatus config
    test('to test the property `config`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeDaemonEndpoints daemonEndpoints
    test('to test the property `daemonEndpoints`', () async {
      // TODO
    });

    // List of container images on this node
    // BuiltList<IoK8sApiCoreV1ContainerImage> images
    test('to test the property `images`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeSystemInfo nodeInfo
    test('to test the property `nodeInfo`', () async {
      // TODO
    });

    // NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.  
    // String phase
    test('to test the property `phase`', () async {
      // TODO
    });

    // List of volumes that are attached to the node.
    // BuiltList<IoK8sApiCoreV1AttachedVolume> volumesAttached
    test('to test the property `volumesAttached`', () async {
      // TODO
    });

    // List of attachable volumes in use (mounted) by the node.
    // BuiltList<String> volumesInUse
    test('to test the property `volumesInUse`', () async {
      // TODO
    });

  });
}
