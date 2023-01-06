import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1PodFailurePolicyRule
void main() {
  final instance = IoK8sApiBatchV1PodFailurePolicyRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1PodFailurePolicyRule, () {
    // Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are: - FailJob: indicates that the pod's job is marked as Failed and all   running pods are terminated. - Ignore: indicates that the counter towards the .backoffLimit is not   incremented and a replacement pod is created. - Count: indicates that the pod is handled in the default way - the   counter towards the .backoffLimit is incremented. Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.  
    // String action
    test('to test the property `action`', () async {
      // TODO
    });

    // IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement onExitCodes
    test('to test the property `onExitCodes`', () async {
      // TODO
    });

    // Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
    // BuiltList<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern> onPodConditions
    test('to test the property `onPodConditions`', () async {
      // TODO
    });

  });
}
