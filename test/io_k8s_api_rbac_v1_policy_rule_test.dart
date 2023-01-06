import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiRbacV1PolicyRule
void main() {
  final instance = IoK8sApiRbacV1PolicyRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiRbacV1PolicyRule, () {
    // APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. \"\" represents the core API group and \"*\" represents all API groups.
    // BuiltList<String> apiGroups
    test('to test the property `apiGroups`', () async {
      // TODO
    });

    // NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as \"/api\"),  but not both.
    // BuiltList<String> nonResourceURLs
    test('to test the property `nonResourceURLs`', () async {
      // TODO
    });

    // ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
    // BuiltList<String> resourceNames
    test('to test the property `resourceNames`', () async {
      // TODO
    });

    // Resources is a list of resources this rule applies to. '*' represents all resources.
    // BuiltList<String> resources
    test('to test the property `resources`', () async {
      // TODO
    });

    // Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
    // BuiltList<String> verbs
    test('to test the property `verbs`', () async {
      // TODO
    });

  });
}
