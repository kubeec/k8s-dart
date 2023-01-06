import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ConfigMapKeySelector
void main() {
  final instance = IoK8sApiCoreV1ConfigMapKeySelectorBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ConfigMapKeySelector, () {
    // The key to select.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Specify whether the ConfigMap or its key must be defined
    // bool optional
    test('to test the property `optional`', () async {
      // TODO
    });

  });
}
