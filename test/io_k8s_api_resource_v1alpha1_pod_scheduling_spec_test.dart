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

// tests for IoK8sApiResourceV1alpha1PodSchedulingSpec
void main() {
  // final instance = IoK8sApiResourceV1alpha1PodSchedulingSpec();

  group('test IoK8sApiResourceV1alpha1PodSchedulingSpec', () {
    // PotentialNodes lists nodes where the Pod might be able to run.  The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
    // List<String> potentialNodes (default value: const [])
    test('to test the property `potentialNodes`', () async {
      // TODO
    });

    // SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted.
    // String selectedNode
    test('to test the property `selectedNode`', () async {
      // TODO
    });


  });

}
