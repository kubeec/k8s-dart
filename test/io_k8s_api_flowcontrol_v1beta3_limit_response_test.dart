import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta3LimitResponse
void main() {
  final instance = IoK8sApiFlowcontrolV1beta3LimitResponseBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta3LimitResponse, () {
    // IoK8sApiFlowcontrolV1beta3QueuingConfiguration queuing
    test('to test the property `queuing`', () async {
      // TODO
    });

    // `type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
