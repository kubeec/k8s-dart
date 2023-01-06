import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1VsphereVirtualDiskVolumeSource
void main() {
  final instance = IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1VsphereVirtualDiskVolumeSource, () {
    // fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
    // String storagePolicyID
    test('to test the property `storagePolicyID`', () async {
      // TODO
    });

    // storagePolicyName is the storage Policy Based Management (SPBM) profile name.
    // String storagePolicyName
    test('to test the property `storagePolicyName`', () async {
      // TODO
    });

    // volumePath is the path that identifies vSphere volume vmdk
    // String volumePath
    test('to test the property `volumePath`', () async {
      // TODO
    });

  });
}
