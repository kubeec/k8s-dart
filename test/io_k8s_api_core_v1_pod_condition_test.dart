import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PodCondition
void main() {
  final instance = IoK8sApiCoreV1PodConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PodCondition, () {
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

    // Human-readable message indicating details about last transition.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Unique, one-word, CamelCase reason for the condition's last transition.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Type is the type of the condition. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
