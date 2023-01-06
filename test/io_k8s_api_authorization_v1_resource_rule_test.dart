import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthorizationV1ResourceRule
void main() {
  final instance = IoK8sApiAuthorizationV1ResourceRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthorizationV1ResourceRule, () {
    // APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.
    // BuiltList<String> apiGroups
    test('to test the property `apiGroups`', () async {
      // TODO
    });

    // ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.
    // BuiltList<String> resourceNames
    test('to test the property `resourceNames`', () async {
      // TODO
    });

    // Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.  \"*_/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.
    // BuiltList<String> resources
    test('to test the property `resources`', () async {
      // TODO
    });

    // Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
    // BuiltList<String> verbs
    test('to test the property `verbs`', () async {
      // TODO
    });

  });
}
