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

// tests for IoK8sApiBatchV1PodFailurePolicyRule
void main() {
  // final instance = IoK8sApiBatchV1PodFailurePolicyRule();

  group('test IoK8sApiBatchV1PodFailurePolicyRule', () {
    // Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are: - FailJob: indicates that the pod's job is marked as Failed and all   running pods are terminated. - Ignore: indicates that the counter towards the .backoffLimit is not   incremented and a replacement pod is created. - Count: indicates that the pod is handled in the default way - the   counter towards the .backoffLimit is incremented. Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.  
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement onExitCodes
    test('to test the property `onExitCodes`', () async {
      // TODO
    });

    // Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
    // List<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern> onPodConditions (default value: const [])
    test('to test the property `onPodConditions`', () async {
      // TODO
    });


  });

}
