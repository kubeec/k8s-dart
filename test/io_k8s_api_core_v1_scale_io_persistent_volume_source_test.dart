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

// tests for IoK8sApiCoreV1ScaleIOPersistentVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1ScaleIOPersistentVolumeSource();

  group('test IoK8sApiCoreV1ScaleIOPersistentVolumeSource', () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Default is \"xfs\"
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // gateway is the host address of the ScaleIO API Gateway.
    // String gateway
    test('to test the property `gateway`', () async {
      // TODO
    });

    // protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
    // String protectionDomain
    test('to test the property `protectionDomain`', () async {
      // TODO
    });

    // readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SecretReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
    // bool sslEnabled
    test('to test the property `sslEnabled`', () async {
      // TODO
    });

    // storageMode indicates whether the storage for a volume should be ThickProvisioned or ThinProvisioned. Default is ThinProvisioned.
    // String storageMode
    test('to test the property `storageMode`', () async {
      // TODO
    });

    // storagePool is the ScaleIO Storage Pool associated with the protection domain.
    // String storagePool
    test('to test the property `storagePool`', () async {
      // TODO
    });

    // system is the name of the storage system as configured in ScaleIO.
    // String system
    test('to test the property `system`', () async {
      // TODO
    });

    // volumeName is the name of a volume already created in the ScaleIO system that is associated with this volume source.
    // String volumeName
    test('to test the property `volumeName`', () async {
      // TODO
    });


  });

}
