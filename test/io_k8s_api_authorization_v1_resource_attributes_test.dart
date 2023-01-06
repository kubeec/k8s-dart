import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAuthorizationV1ResourceAttributes
void main() {
  final instance = IoK8sApiAuthorizationV1ResourceAttributesBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAuthorizationV1ResourceAttributes, () {
    // Group is the API Group of the Resource.  \"*\" means all.
    // String group
    test('to test the property `group`', () async {
      // TODO
    });

    // Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // Resource is one of the existing resource types.  \"*\" means all.
    // String resource
    test('to test the property `resource`', () async {
      // TODO
    });

    // Subresource is one of the existing resource types.  \"\" means none.
    // String subresource
    test('to test the property `subresource`', () async {
      // TODO
    });

    // Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
    // String verb
    test('to test the property `verb`', () async {
      // TODO
    });

    // Version is the API Version of the Resource.  \"*\" means all.
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

  });
}
