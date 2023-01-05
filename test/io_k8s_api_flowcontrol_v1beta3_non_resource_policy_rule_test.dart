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

// tests for IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule
void main() {
  // final instance = IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule();

  group('test IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule', () {
    // `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:   - \"/healthz\" is legal   - \"/hea*\" is illegal   - \"/hea\" is legal but matches nothing   - \"/hea/_*\" also matches nothing   - \"/healthz/_*\" matches all per-component health checks. \"*\" matches all non-resource urls. if it is present, it must be the only entry. Required.
    // List<String> nonResourceURLs (default value: const [])
    test('to test the property `nonResourceURLs`', () async {
      // TODO
    });

    // `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required.
    // List<String> verbs (default value: const [])
    test('to test the property `verbs`', () async {
      // TODO
    });


  });

}
