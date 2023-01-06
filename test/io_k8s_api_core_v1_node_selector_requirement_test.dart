import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeSelectorRequirement
void main() {
  final instance = IoK8sApiCoreV1NodeSelectorRequirementBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeSelectorRequirement, () {
    // The label key that the selector applies to.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.  
    // String operator_
    test('to test the property `operator_`', () async {
      // TODO
    });

    // An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
    // BuiltList<String> values
    test('to test the property `values`', () async {
      // TODO
    });

  });
}
