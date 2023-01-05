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

// tests for IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource();

  group('test IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource', () {
    // fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty).
    // int partition
    test('to test the property `partition`', () async {
      // TODO
    });

    // readOnly value true will force the readOnly setting in VolumeMounts. More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    // String volumeID
    test('to test the property `volumeID`', () async {
      // TODO
    });


  });

}
