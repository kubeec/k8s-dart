import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1VolumeAttachmentStatus
void main() {
  final instance = IoK8sApiStorageV1VolumeAttachmentStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1VolumeAttachmentStatus, () {
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
    // BuiltMap<String, String> attachmentMetadata
    test('to test the property `attachmentMetadata`', () async {
      // TODO
    });

    // IoK8sApiStorageV1VolumeError detachError
    test('to test the property `detachError`', () async {
      // TODO
    });

  });
}
