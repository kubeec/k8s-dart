import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1IngressClassParametersReference
void main() {
  final instance = IoK8sApiNetworkingV1IngressClassParametersReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1IngressClassParametersReference, () {
    // APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    // String apiGroup
    test('to test the property `apiGroup`', () async {
      // TODO
    });

    // Kind is the type of resource being referenced.
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name is the name of resource being referenced.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace is the namespace of the resource being referenced. This field is required when scope is set to \"Namespace\" and must be unset when scope is set to \"Cluster\".
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // Scope represents if this refers to a cluster or namespace scoped resource. This may be set to \"Cluster\" (default) or \"Namespace\".
    // String scope
    test('to test the property `scope`', () async {
      // TODO
    });

  });
}
