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

// tests for IoK8sApiBatchV1PodFailurePolicy
void main() {
  // final instance = IoK8sApiBatchV1PodFailurePolicy();

  group('test IoK8sApiBatchV1PodFailurePolicy', () {
    // A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
    // List<IoK8sApiBatchV1PodFailurePolicyRule> rules (default value: const [])
    test('to test the property `rules`', () async {
      // TODO
    });


  });

}
