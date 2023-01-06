import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1VolumeAttachmentSpec
void main() {
  final instance = IoK8sApiStorageV1VolumeAttachmentSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1VolumeAttachmentSpec, () {
    // Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
    // String attacher
    test('to test the property `attacher`', () async {
      // TODO
    });

    // The node that the volume should be attached to.
    // String nodeName
    test('to test the property `nodeName`', () async {
      // TODO
    });

    // IoK8sApiStorageV1VolumeAttachmentSource source_
    test('to test the property `source_`', () async {
      // TODO
    });

  });
}
