import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PodAffinityTerm
void main() {
  final instance = IoK8sApiCoreV1PodAffinityTermBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PodAffinityTerm, () {
    // IoK8sApimachineryPkgApisMetaV1LabelSelector labelSelector
    test('to test the property `labelSelector`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector namespaceSelector
    test('to test the property `namespaceSelector`', () async {
      // TODO
    });

    // namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".
    // BuiltList<String> namespaces
    test('to test the property `namespaces`', () async {
      // TODO
    });

    // This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
    // String topologyKey
    test('to test the property `topologyKey`', () async {
      // TODO
    });

  });
}
