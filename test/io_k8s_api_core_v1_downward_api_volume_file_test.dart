import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1DownwardAPIVolumeFile
void main() {
  final instance = IoK8sApiCoreV1DownwardAPIVolumeFileBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1DownwardAPIVolumeFile, () {
    // IoK8sApiCoreV1ObjectFieldSelector fieldRef
    test('to test the property `fieldRef`', () async {
      // TODO
    });

    // Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    // int mode
    test('to test the property `mode`', () async {
      // TODO
    });

    // Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ResourceFieldSelector resourceFieldRef
    test('to test the property `resourceFieldRef`', () async {
      // TODO
    });

  });
}
