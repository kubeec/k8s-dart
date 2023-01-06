import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1SecretKeySelector
void main() {
  final instance = IoK8sApiCoreV1SecretKeySelectorBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1SecretKeySelector, () {
    // The key of the secret to select from.  Must be a valid secret key.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Specify whether the Secret or its key must be defined
    // bool optional
    test('to test the property `optional`', () async {
      // TODO
    });

  });
}
