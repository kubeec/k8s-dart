import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1TypedObjectReference
void main() {
  final instance = IoK8sApiCoreV1TypedObjectReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1TypedObjectReference, () {
    // APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
    // String apiGroup
    test('to test the property `apiGroup`', () async {
      // TODO
    });

    // Kind is the type of resource being referenced
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name is the name of resource being referenced
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

  });
}
