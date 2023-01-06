import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern
void main() {
  final instance = IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern, () {
    // Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
