import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthorizationV1NonResourceRule
void main() {
  final instance = IoK8sApiAuthorizationV1NonResourceRuleBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthorizationV1NonResourceRule, () {
    // NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all.
    // BuiltList<String> nonResourceURLs
    test('to test the property `nonResourceURLs`', () async {
      // TODO
    });

    // Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all.
    // BuiltList<String> verbs
    test('to test the property `verbs`', () async {
      // TODO
    });

  });
}
