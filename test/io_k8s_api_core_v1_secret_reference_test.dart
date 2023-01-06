import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1SecretReference
void main() {
  final instance = IoK8sApiCoreV1SecretReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1SecretReference, () {
    // name is unique within a namespace to reference a secret resource.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // namespace defines the space within which the secret name must be unique.
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

  });
}
