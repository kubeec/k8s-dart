import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NamespaceStatus
void main() {
  final instance = IoK8sApiCoreV1NamespaceStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NamespaceStatus, () {
    // Represents the latest available observations of a namespace's current state.
    // BuiltList<IoK8sApiCoreV1NamespaceCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/  
    // String phase
    test('to test the property `phase`', () async {
      // TODO
    });

  });
}
