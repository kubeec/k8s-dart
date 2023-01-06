import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAdmissionregistrationV1alpha1MatchResources
void main() {
  final instance = IoK8sApiAdmissionregistrationV1alpha1MatchResourcesBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAdmissionregistrationV1alpha1MatchResources, () {
    // ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
    // BuiltList<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations> excludeResourceRules
    test('to test the property `excludeResourceRules`', () async {
      // TODO
    });

    // matchPolicy defines how the \"MatchResources\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.  Defaults to \"Equivalent\"
    // String matchPolicy
    test('to test the property `matchPolicy`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector namespaceSelector
    test('to test the property `namespaceSelector`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector objectSelector
    test('to test the property `objectSelector`', () async {
      // TODO
    });

    // ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
    // BuiltList<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations> resourceRules
    test('to test the property `resourceRules`', () async {
      // TODO
    });

  });
}
