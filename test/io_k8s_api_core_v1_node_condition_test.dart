import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeCondition
void main() {
  final instance = IoK8sApiCoreV1NodeConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeCondition, () {
    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastHeartbeatTime
    test('to test the property `lastHeartbeatTime`', () async {
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

    // Type of node condition.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
