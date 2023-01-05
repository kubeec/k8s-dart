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

// tests for IoK8sApiCoreV1SecretProjection
void main() {
  // final instance = IoK8sApiCoreV1SecretProjection();

  group('test IoK8sApiCoreV1SecretProjection', () {
    // items if unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    // List<IoK8sApiCoreV1KeyToPath> items (default value: const [])
    test('to test the property `items`', () async {
      // TODO
    });

    // Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // optional field specify whether the Secret or its key must be defined
    // bool optional
    test('to test the property `optional`', () async {
      // TODO
    });


  });

}
