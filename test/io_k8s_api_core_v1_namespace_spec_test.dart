import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NamespaceSpec
void main() {
  final instance = IoK8sApiCoreV1NamespaceSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NamespaceSpec, () {
    // Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
    // BuiltList<String> finalizers
    test('to test the property `finalizers`', () async {
      // TODO
    });

  });
}
