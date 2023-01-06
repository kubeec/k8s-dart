import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1SecretEnvSource
void main() {
  final instance = IoK8sApiCoreV1SecretEnvSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1SecretEnvSource, () {
    // Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Specify whether the Secret must be defined
    // bool optional
    test('to test the property `optional`', () async {
      // TODO
    });

  });
}
