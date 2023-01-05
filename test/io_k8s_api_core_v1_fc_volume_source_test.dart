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

// tests for IoK8sApiCoreV1FCVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1FCVolumeSource();

  group('test IoK8sApiCoreV1FCVolumeSource', () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // lun is Optional: FC target lun number
    // int lun
    test('to test the property `lun`', () async {
      // TODO
    });

    // readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // targetWWNs is Optional: FC target worldwide names (WWNs)
    // List<String> targetWWNs (default value: const [])
    test('to test the property `targetWWNs`', () async {
      // TODO
    });

    // wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
    // List<String> wwids (default value: const [])
    test('to test the property `wwids`', () async {
      // TODO
    });


  });

}
