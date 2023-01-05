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

// tests for IoK8sApiCoreV1CephFSPersistentVolumeSource
void main() {
  // final instance = IoK8sApiCoreV1CephFSPersistentVolumeSource();

  group('test IoK8sApiCoreV1CephFSPersistentVolumeSource', () {
    // monitors is Required: Monitors is a collection of Ceph monitors More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    // List<String> monitors (default value: const [])
    test('to test the property `monitors`', () async {
      // TODO
    });

    // path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // secretFile is Optional: SecretFile is the path to key ring for User, default is /etc/ceph/user.secret More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    // String secretFile
    test('to test the property `secretFile`', () async {
      // TODO
    });

    // IoK8sApiCoreV1SecretReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // user is Optional: User is the rados user name, default is admin More info: https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    // String user
    test('to test the property `user`', () async {
      // TODO
    });


  });

}
