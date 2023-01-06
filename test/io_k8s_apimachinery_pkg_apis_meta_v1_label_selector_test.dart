import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1LabelSelector
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1LabelSelectorBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1LabelSelector, () {
    // matchExpressions is a list of label selector requirements. The requirements are ANDed.
    // BuiltList<IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement> matchExpressions
    test('to test the property `matchExpressions`', () async {
      // TODO
    });

    // matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.
    // BuiltMap<String, String> matchLabels
    test('to test the property `matchLabels`', () async {
      // TODO
    });

  });
}
