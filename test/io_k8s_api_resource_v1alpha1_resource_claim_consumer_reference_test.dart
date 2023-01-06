import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClaimConsumerReference
void main() {
  final instance = IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1ResourceClaimConsumerReference, () {
    // APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
    // String apiGroup
    test('to test the property `apiGroup`', () async {
      // TODO
    });

    // Name is the name of resource being referenced.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Resource is the type of resource being referenced, for example \"pods\".
    // String resource
    test('to test the property `resource`', () async {
      // TODO
    });

    // UID identifies exactly one incarnation of the resource.
    // String uid
    test('to test the property `uid`', () async {
      // TODO
    });

  });
}
