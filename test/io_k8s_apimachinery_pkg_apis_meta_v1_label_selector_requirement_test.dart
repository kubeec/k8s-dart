import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirementBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement, () {
    // key is the label key that the selector applies to.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
    // String operator_
    test('to test the property `operator_`', () async {
      // TODO
    });

    // values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
    // BuiltList<String> values
    test('to test the property `values`', () async {
      // TODO
    });

  });
}
