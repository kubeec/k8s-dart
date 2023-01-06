import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1SecretVolumeSource
void main() {
  final instance = IoK8sApiCoreV1SecretVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1SecretVolumeSource, () {
    // defaultMode is Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
    // int defaultMode
    test('to test the property `defaultMode`', () async {
      // TODO
    });

    // items If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    // BuiltList<IoK8sApiCoreV1KeyToPath> items
    test('to test the property `items`', () async {
      // TODO
    });

    // optional field specify whether the Secret or its keys must be defined
    // bool optional
    test('to test the property `optional`', () async {
      // TODO
    });

    // secretName is the name of the secret in the pod's namespace to use. More info: https://kubernetes.io/docs/concepts/storage/volumes#secret
    // String secretName
    test('to test the property `secretName`', () async {
      // TODO
    });

  });
}
