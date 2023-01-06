import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClaimStatus
void main() {
  final instance = IoK8sApiResourceV1alpha1ResourceClaimStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1ResourceClaimStatus, () {
    // IoK8sApiResourceV1alpha1AllocationResult allocation
    test('to test the property `allocation`', () async {
      // TODO
    });

    // DeallocationRequested indicates that a ResourceClaim is to be deallocated.  The driver then must deallocate this claim and reset the field together with clearing the Allocation field.  While DeallocationRequested is set, no new consumers may be added to ReservedFor.
    // bool deallocationRequested
    test('to test the property `deallocationRequested`', () async {
      // TODO
    });

    // DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
    // String driverName
    test('to test the property `driverName`', () async {
      // TODO
    });

    // ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.  There can be at most 32 such reservations. This may get increased in the future, but not reduced.
    // BuiltList<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference> reservedFor
    test('to test the property `reservedFor`', () async {
      // TODO
    });

  });
}
