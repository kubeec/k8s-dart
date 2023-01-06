import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition
void main() {
  final instance = IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition, () {
    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastTransitionTime
    test('to test the property `lastTransitionTime`', () async {
      // TODO
    });

    // message is a human-readable explanation containing details about the transition
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // reason is the reason for the condition's last transition.
    // String reason
    test('to test the property `reason`', () async {
      // TODO
    });

    // status is the status of the condition (True, False, Unknown)
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // type describes the current condition
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
