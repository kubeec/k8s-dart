import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeSelectorTerm
void main() {
  final instance = IoK8sApiCoreV1NodeSelectorTermBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeSelectorTerm, () {
    // A list of node selector requirements by node's labels.
    // BuiltList<IoK8sApiCoreV1NodeSelectorRequirement> matchExpressions
    test('to test the property `matchExpressions`', () async {
      // TODO
    });

    // A list of node selector requirements by node's fields.
    // BuiltList<IoK8sApiCoreV1NodeSelectorRequirement> matchFields
    test('to test the property `matchFields`', () async {
      // TODO
    });

  });
}
