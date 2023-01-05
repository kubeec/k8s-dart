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

// tests for IoK8sApiCoreV1NodeAffinity
void main() {
  // final instance = IoK8sApiCoreV1NodeAffinity();

  group('test IoK8sApiCoreV1NodeAffinity', () {
    // The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    // List<IoK8sApiCoreV1PreferredSchedulingTerm> preferredDuringSchedulingIgnoredDuringExecution (default value: const [])
    test('to test the property `preferredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeSelector requiredDuringSchedulingIgnoredDuringExecution
    test('to test the property `requiredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });


  });

}
