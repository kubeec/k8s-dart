import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1EnvFromSource
void main() {
  final instance = IoK8sApiCoreV1EnvFromSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1EnvFromSource, () {
    // IoK8sApiCoreV1ConfigMapEnvSource configMapRef
    test('to test the property `configMapRef`', () async {
      // TODO
    });

    // An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    // String prefix
    test('to test the property `prefix`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SecretEnvSource secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

  });
}
