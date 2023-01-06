import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1StorageOSPersistentVolumeSource
void main() {
  final instance = IoK8sApiCoreV1StorageOSPersistentVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1StorageOSPersistentVolumeSource, () {
    // fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
    // String volumeName
    test('to test the property `volumeName`', () async {
      // TODO
    });

    // volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    // String volumeNamespace
    test('to test the property `volumeNamespace`', () async {
      // TODO
    });

  });
}
