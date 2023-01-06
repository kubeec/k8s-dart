import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiRbacV1Subject
void main() {
  final instance = IoK8sApiRbacV1SubjectBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiRbacV1Subject, () {
    // APIGroup holds the API group of the referenced subject. Defaults to \"\" for ServiceAccount subjects. Defaults to \"rbac.authorization.k8s.io\" for User and Group subjects.
    // String apiGroup
    test('to test the property `apiGroup`', () async {
      // TODO
    });

    // Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name of the object being referenced.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error.
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

  });
}
