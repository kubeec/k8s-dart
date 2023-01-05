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

// tests for IoK8sApiStorageV1VolumeAttachmentStatus
void main() {
  // final instance = IoK8sApiStorageV1VolumeAttachmentStatus();

  group('test IoK8sApiStorageV1VolumeAttachmentStatus', () {
    // IoK8sApiStorageV1VolumeError attachError
    test('to test the property `attachError`', () async {
      // TODO
    });

    // Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    // bool attached
    test('to test the property `attached`', () async {
      // TODO
    });

    // Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
    // Map<String, String> attachmentMetadata (default value: const {})
    test('to test the property `attachmentMetadata`', () async {
      // TODO
    });

    // IoK8sApiStorageV1VolumeError detachError
    test('to test the property `detachError`', () async {
      // TODO
    });


  });

}
