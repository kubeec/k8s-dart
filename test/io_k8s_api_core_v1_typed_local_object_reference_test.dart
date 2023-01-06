import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1TypedLocalObjectReference
void main() {
  final instance = IoK8sApiCoreV1TypedLocalObjectReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1TypedLocalObjectReference, () {
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

  });
}
