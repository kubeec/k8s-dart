import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1JobCondition
void main() {
  final instance = IoK8sApiBatchV1JobConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1JobCondition, () {
    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastProbeTime
    test('to test the property `lastProbeTime`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastTransitionTime
    test('to test the property `lastTransitionTime`', () async {
      // TODO
    });

    // Human readable message indicating details about last transition.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // (brief) reason for the condition's last transition.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // Status of the condition, one of True, False, Unknown.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Type of job condition, Complete or Failed.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
