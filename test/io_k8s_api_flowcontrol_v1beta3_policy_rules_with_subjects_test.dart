import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects
void main() {
  final instance = IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjectsBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects, () {
    // `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
    // BuiltList<IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule> nonResourceRules
    test('to test the property `nonResourceRules`', () async {
      // TODO
    });

    // `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
    // BuiltList<IoK8sApiFlowcontrolV1beta3ResourcePolicyRule> resourceRules
    test('to test the property `resourceRules`', () async {
      // TODO
    });

    // subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
    // BuiltList<IoK8sApiFlowcontrolV1beta3Subject> subjects
    test('to test the property `subjects`', () async {
      // TODO
    });

  });
}
