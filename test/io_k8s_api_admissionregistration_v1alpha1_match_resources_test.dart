//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiAdmissionregistrationV1alpha1MatchResources
void main() {
  // final instance = IoK8sApiAdmissionregistrationV1alpha1MatchResources();

  group('test IoK8sApiAdmissionregistrationV1alpha1MatchResources', () {
    // ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
    // List<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations> excludeResourceRules (default value: const [])
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
    // List<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations> resourceRules (default value: const [])
    test('to test the property `resourceRules`', () async {
      // TODO
    });


  });

}
