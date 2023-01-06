import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition
void main() {
  final instance = IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition, () {
    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastTransitionTime
    test('to test the property `lastTransitionTime`', () async {
      // TODO
    });

    // `message` is a human-readable message indicating details about last transition.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // `status` is the status of the condition. Can be True, False, Unknown. Required.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // `type` is the type of the condition. Required.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
