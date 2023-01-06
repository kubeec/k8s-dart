import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PersistentVolumeClaimCondition
void main() {
  final instance = IoK8sApiCoreV1PersistentVolumeClaimConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PersistentVolumeClaimCondition, () {
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

    // message is the human-readable message indicating details about last transition.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
