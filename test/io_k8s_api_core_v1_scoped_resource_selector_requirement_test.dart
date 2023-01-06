import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ScopedResourceSelectorRequirement
void main() {
  final instance = IoK8sApiCoreV1ScopedResourceSelectorRequirementBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ScopedResourceSelectorRequirement, () {
    // Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.  
    // String operator_
    test('to test the property `operator_`', () async {
      // TODO
    });

    // The name of the scope that the selector applies to.  
    // String scopeName
    test('to test the property `scopeName`', () async {
      // TODO
    });

    // An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    // BuiltList<String> values
    test('to test the property `values`', () async {
      // TODO
    });

  });
}
