import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ResourceQuotaSpec
void main() {
  final instance = IoK8sApiCoreV1ResourceQuotaSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ResourceQuotaSpec, () {
    // hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
    // BuiltMap<String, String> hard
    test('to test the property `hard`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ScopeSelector scopeSelector
    test('to test the property `scopeSelector`', () async {
      // TODO
    });

    // A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    // BuiltList<String> scopes
    test('to test the property `scopes`', () async {
      // TODO
    });

  });
}
