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

// tests for IoK8sApiCoreV1CSIVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1CSIVolumeSource();

  group('test IoK8sApiCoreV1CSIVolumeSource', () {
    // driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
    // String driver
    test('to test the property `driver`', () async {
      // TODO
    });

    // fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalObjectReference nodePublishSecretRef
    test('to test the property `nodePublishSecretRef`', () async {
      // TODO
    });

    // readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
    // Map<String, String> volumeAttributes (default value: const {})
    test('to test the property `volumeAttributes`', () async {
      // TODO
    });


  });

}
