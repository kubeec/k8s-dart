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

// tests for IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects
void main() {
  // final instance = IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects();

  group('test IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects', () {
    // `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
    // List<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule> nonResourceRules (default value: const [])
    test('to test the property `nonResourceRules`', () async {
      // TODO
    });

    // `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
    // List<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule> resourceRules (default value: const [])
    test('to test the property `resourceRules`', () async {
      // TODO
    });

    // subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
    // List<IoK8sApiFlowcontrolV1beta2Subject> subjects (default value: const [])
    test('to test the property `subjects`', () async {
      // TODO
    });


  });

}
