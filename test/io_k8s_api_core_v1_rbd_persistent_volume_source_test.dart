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

// tests for IoK8sApiCoreV1RBDPersistentVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1RBDPersistentVolumeSource();

  group('test IoK8sApiCoreV1RBDPersistentVolumeSource', () {
    // fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    // String image
    test('to test the property `image`', () async {
      // TODO
    });

    // keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    // String keyring
    test('to test the property `keyring`', () async {
      // TODO
    });

    // monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    // List<String> monitors (default value: const [])
    test('to test the property `monitors`', () async {
      // TODO
    });

    // pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    // String pool
    test('to test the property `pool`', () async {
      // TODO
    });

    // readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SecretReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    // String user
    test('to test the property `user`', () async {
      // TODO
    });


  });

}
