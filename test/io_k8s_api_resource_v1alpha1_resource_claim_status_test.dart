//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClaimStatus
void main() {
  // final instance = IoK8sApiResourceV1alpha1ResourceClaimStatus();

  group('test IoK8sApiResourceV1alpha1ResourceClaimStatus', () {
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
    // List<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference> reservedFor (default value: const [])
    test('to test the property `reservedFor`', () async {
      // TODO
    });


  });

}
