import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1KeyToPath
void main() {
  final instance = IoK8sApiCoreV1KeyToPathBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1KeyToPath, () {
    // key is the key to project.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // mode is Optional: mode bits used to set permissions on this file. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    // int mode
    test('to test the property `mode`', () async {
      // TODO
    });

    // path is the relative path of the file to map the key to. May not be an absolute path. May not contain the path element '..'. May not start with the string '..'.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

  });
}
