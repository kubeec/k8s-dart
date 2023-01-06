import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1DownwardAPIVolumeSource
void main() {
  final instance = IoK8sApiCoreV1DownwardAPIVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1DownwardAPIVolumeSource, () {
    // Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    // int defaultMode
    test('to test the property `defaultMode`', () async {
      // TODO
    });

    // Items is a list of downward API volume file
    // BuiltList<IoK8sApiCoreV1DownwardAPIVolumeFile> items
    test('to test the property `items`', () async {
      // TODO
    });

  });
}
