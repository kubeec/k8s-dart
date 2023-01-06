import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2HPAScalingRules
void main() {
  final instance = IoK8sApiAutoscalingV2HPAScalingRulesBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2HPAScalingRules, () {
    // policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
    // BuiltList<IoK8sApiAutoscalingV2HPAScalingPolicy> policies
    test('to test the property `policies`', () async {
      // TODO
    });

    // selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
    // String selectPolicy
    test('to test the property `selectPolicy`', () async {
      // TODO
    });

    // StabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
    // int stabilizationWindowSeconds
    test('to test the property `stabilizationWindowSeconds`', () async {
      // TODO
    });

  });
}
