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

// tests for IoK8sApiCoreV1PersistentVolumeClaimStatus
void main() {
  // final instance = IoK8sApiCoreV1PersistentVolumeClaimStatus();

  group('test IoK8sApiCoreV1PersistentVolumeClaimStatus', () {
    // accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    // List<String> accessModes (default value: const [])
    test('to test the property `accessModes`', () async {
      // TODO
    });

    // allocatedResources is the storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    // Map<String, String> allocatedResources (default value: const {})
    test('to test the property `allocatedResources`', () async {
      // TODO
    });

    // capacity represents the actual resources of the underlying volume.
    // Map<String, String> capacity (default value: const {})
    test('to test the property `capacity`', () async {
      // TODO
    });

    // conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
    // List<IoK8sApiCoreV1PersistentVolumeClaimCondition> conditions (default value: const [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // phase represents the current phase of PersistentVolumeClaim.  
    // String phase
    test('to test the property `phase`', () async {
      // TODO
    });

    // resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
    // String resizeStatus
    test('to test the property `resizeStatus`', () async {
      // TODO
    });


  });

}
