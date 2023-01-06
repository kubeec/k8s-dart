import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1CinderVolumeSource
void main() {
  final instance = IoK8sApiCoreV1CinderVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1CinderVolumeSource, () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalObjectReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    // String volumeID
    test('to test the property `volumeID`', () async {
      // TODO
    });

  });
}
