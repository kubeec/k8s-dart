import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClaimParametersReference
void main() {
  final instance = IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1ResourceClaimParametersReference, () {
    // APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
    // String apiGroup
    test('to test the property `apiGroup`', () async {
      // TODO
    });

    // Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example \"ConfigMap\".
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // Name is the name of resource being referenced.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

  });
}
