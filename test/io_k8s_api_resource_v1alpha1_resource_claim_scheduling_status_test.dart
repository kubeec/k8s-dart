import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus
void main() {
  final instance = IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1ResourceClaimSchedulingStatus, () {
    // Name matches the pod.spec.resourceClaims[*].Name field.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.  The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
    // BuiltList<String> unsuitableNodes
    test('to test the property `unsuitableNodes`', () async {
      // TODO
    });

  });
}
