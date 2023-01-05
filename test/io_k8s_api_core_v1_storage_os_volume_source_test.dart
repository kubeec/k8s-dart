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

// tests for IoK8sApiCoreV1StorageOSVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1StorageOSVolumeSource();

  group('test IoK8sApiCoreV1StorageOSVolumeSource', () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalObjectReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
    // String volumeName
    test('to test the property `volumeName`', () async {
      // TODO
    });

    // volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    // String volumeNamespace
    test('to test the property `volumeNamespace`', () async {
      // TODO
    });


  });

}
