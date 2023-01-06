import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeSpec
void main() {
  final instance = IoK8sApiCoreV1NodeSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeSpec, () {
    // IoK8sApiCoreV1NodeConfigSource configSource
    test('to test the property `configSource`', () async {
      // TODO
    });

    // Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
    // String externalID
    test('to test the property `externalID`', () async {
      // TODO
    });

    // PodCIDR represents the pod IP range assigned to the node.
    // String podCIDR
    test('to test the property `podCIDR`', () async {
      // TODO
    });

    // podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
    // BuiltList<String> podCIDRs
    test('to test the property `podCIDRs`', () async {
      // TODO
    });

    // ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    // String providerID
    test('to test the property `providerID`', () async {
      // TODO
    });

    // If specified, the node's taints.
    // BuiltList<IoK8sApiCoreV1Taint> taints
    test('to test the property `taints`', () async {
      // TODO
    });

    // Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
    // bool unschedulable
    test('to test the property `unschedulable`', () async {
      // TODO
    });

  });
}
