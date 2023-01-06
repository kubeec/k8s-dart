import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ResourceClaim
void main() {
  final instance = IoK8sApiCoreV1ResourceClaimBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ResourceClaim, () {
    // Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

  });
}
