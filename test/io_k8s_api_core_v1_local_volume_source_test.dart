import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1LocalVolumeSource
void main() {
  final instance = IoK8sApiCoreV1LocalVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1LocalVolumeSource, () {
    // fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a filesystem if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

  });
}
