import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1FCVolumeSource
void main() {
  final instance = IoK8sApiCoreV1FCVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1FCVolumeSource, () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // lun is Optional: FC target lun number
    // int lun
    test('to test the property `lun`', () async {
      // TODO
    });

    // readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // targetWWNs is Optional: FC target worldwide names (WWNs)
    // BuiltList<String> targetWWNs
    test('to test the property `targetWWNs`', () async {
      // TODO
    });

    // wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
    // BuiltList<String> wwids
    test('to test the property `wwids`', () async {
      // TODO
    });

  });
}
