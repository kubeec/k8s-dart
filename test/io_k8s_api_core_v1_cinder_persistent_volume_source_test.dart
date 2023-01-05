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

// tests for IoK8sApiCoreV1CinderPersistentVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1CinderPersistentVolumeSource();

  group('test IoK8sApiCoreV1CinderPersistentVolumeSource', () {
    // fsType Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SecretReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    // String volumeID
    test('to test the property `volumeID`', () async {
      // TODO
    });


  });

}
