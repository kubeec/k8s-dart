import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec
void main() {
  final instance = IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta2PriorityLevelConfigurationSpec, () {
    // IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration limited
    test('to test the property `limited`', () async {
      // TODO
    });

    // `type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
