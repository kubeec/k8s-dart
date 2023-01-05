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

// tests for IoK8sApiCoreV1VolumeMount
void main() {
  // final instance = IoK8sApiCoreV1VolumeMount();

  group('test IoK8sApiCoreV1VolumeMount', () {
    // Path within the container at which the volume should be mounted.  Must not contain ':'.
    // String mountPath
    test('to test the property `mountPath`', () async {
      // TODO
    });

    // mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    // String mountPropagation
    test('to test the property `mountPropagation`', () async {
      // TODO
    });

    // This must match the Name of a Volume.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // Path within the volume from which the container's volume should be mounted. Defaults to \"\" (volume's root).
    // String subPath
    test('to test the property `subPath`', () async {
      // TODO
    });

    // Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to \"\" (volume's root). SubPathExpr and SubPath are mutually exclusive.
    // String subPathExpr
    test('to test the property `subPathExpr`', () async {
      // TODO
    });


  });

}
