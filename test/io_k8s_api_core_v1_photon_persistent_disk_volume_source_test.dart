import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PhotonPersistentDiskVolumeSource
void main() {
  final instance = IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PhotonPersistentDiskVolumeSource, () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // pdID is the ID that identifies Photon Controller persistent disk
    // String pdID
    test('to test the property `pdID`', () async {
      // TODO
    });

  });
}
