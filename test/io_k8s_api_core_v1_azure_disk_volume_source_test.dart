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

// tests for IoK8sApiCoreV1AzureDiskVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1AzureDiskVolumeSource();

  group('test IoK8sApiCoreV1AzureDiskVolumeSource', () {
    // cachingMode is the Host Caching mode: None, Read Only, Read Write.
    // String cachingMode
    test('to test the property `cachingMode`', () async {
      // TODO
    });

    // diskName is the Name of the data disk in the blob storage
    // String diskName
    test('to test the property `diskName`', () async {
      // TODO
    });

    // diskURI is the URI of data disk in the blob storage
    // String diskURI
    test('to test the property `diskURI`', () async {
      // TODO
    });

    // fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });


  });

}
