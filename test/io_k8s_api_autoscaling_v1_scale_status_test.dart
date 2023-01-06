import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV1ScaleStatus
void main() {
  final instance = IoK8sApiAutoscalingV1ScaleStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV1ScaleStatus, () {
    // actual number of observed instances of the scaled object.
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

    // label query over pods that should match the replicas count. This is same as the label selector but in the string format to avoid introspection by clients. The string will be in the same format as the query-param syntax. More info about label selectors: http://kubernetes.io/docs/user-guide/labels#label-selectors
    // String selector
    test('to test the property `selector`', () async {
      // TODO
    });

  });
}
