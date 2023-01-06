import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1FlexVolumeSource
void main() {
  final instance = IoK8sApiCoreV1FlexVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1FlexVolumeSource, () {
    // driver is the name of the driver to use for this volume.
    // String driver
    test('to test the property `driver`', () async {
      // TODO
    });

    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default filesystem depends on FlexVolume script.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // options is Optional: this field holds extra command options if any.
    // BuiltMap<String, String> options
    test('to test the property `options`', () async {
      // TODO
    });

    // readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalObjectReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

  });
}
