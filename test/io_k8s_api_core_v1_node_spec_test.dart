//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiCoreV1NodeSpec
void main() {
  // final instance = IoK8sApiCoreV1NodeSpec();

  group('test IoK8sApiCoreV1NodeSpec', () {
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
    // List<String> podCIDRs (default value: const [])
    test('to test the property `podCIDRs`', () async {
      // TODO
    });

    // ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
    // String providerID
    test('to test the property `providerID`', () async {
      // TODO
    });

    // If specified, the node's taints.
    // List<IoK8sApiCoreV1Taint> taints (default value: const [])
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
