import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ResourceQuotaStatus
void main() {
  final instance = IoK8sApiCoreV1ResourceQuotaStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ResourceQuotaStatus, () {
    // Hard is the set of enforced hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
    // BuiltMap<String, String> hard
    test('to test the property `hard`', () async {
      // TODO
    });

    // Used is the current observed total usage of the resource in the namespace.
    // BuiltMap<String, String> used
    test('to test the property `used`', () async {
      // TODO
    });

  });
}
