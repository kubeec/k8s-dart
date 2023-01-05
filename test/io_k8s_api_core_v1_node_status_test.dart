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

// tests for IoK8sApiCoreV1NodeStatus
void main() {
  // final instance = IoK8sApiCoreV1NodeStatus();

  group('test IoK8sApiCoreV1NodeStatus', () {
    // List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example.
    // List<IoK8sApiCoreV1NodeAddress> addresses (default value: const [])
    test('to test the property `addresses`', () async {
      // TODO
    });

    // Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
    // Map<String, String> allocatable (default value: const {})
    test('to test the property `allocatable`', () async {
      // TODO
    });

    // Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    // Map<String, String> capacity (default value: const {})
    test('to test the property `capacity`', () async {
      // TODO
    });

    // Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
    // List<IoK8sApiCoreV1NodeCondition> conditions (default value: const [])
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
    // List<IoK8sApiCoreV1ContainerImage> images (default value: const [])
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
    // List<IoK8sApiCoreV1AttachedVolume> volumesAttached (default value: const [])
    test('to test the property `volumesAttached`', () async {
      // TODO
    });

    // List of attachable volumes in use (mounted) by the node.
    // List<String> volumesInUse (default value: const [])
    test('to test the property `volumesInUse`', () async {
      // TODO
    });


  });

}
