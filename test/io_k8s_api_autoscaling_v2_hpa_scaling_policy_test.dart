import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2HPAScalingPolicy
void main() {
  final instance = IoK8sApiAutoscalingV2HPAScalingPolicyBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2HPAScalingPolicy, () {
    // PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    // int periodSeconds
    test('to test the property `periodSeconds`', () async {
      // TODO
    });

    // Type is used to specify the scaling policy.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Value contains the amount of change which is permitted by the policy. It must be greater than zero
    // int value
    test('to test the property `value`', () async {
      // TODO
    });

  });
}
