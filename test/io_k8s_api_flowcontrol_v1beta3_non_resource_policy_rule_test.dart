import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule
void main() {
  final instance = IoK8sApiFlowcontrolV1beta3NonResourcePolicyRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiFlowcontrolV1beta3NonResourcePolicyRule, () {
    // `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:   - \"/healthz\" is legal   - \"/hea*\" is illegal   - \"/hea\" is legal but matches nothing   - \"/hea/_*\" also matches nothing   - \"/healthz/_*\" matches all per-component health checks. \"*\" matches all non-resource urls. if it is present, it must be the only entry. Required.
    // BuiltList<String> nonResourceURLs
    test('to test the property `nonResourceURLs`', () async {
      // TODO
    });

    // `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required.
    // BuiltList<String> verbs
    test('to test the property `verbs`', () async {
      // TODO
    });

  });
}
