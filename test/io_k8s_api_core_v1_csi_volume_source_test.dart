import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1CSIVolumeSource
void main() {
  final instance = IoK8sApiCoreV1CSIVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1CSIVolumeSource, () {
    // driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
    // String driver
    test('to test the property `driver`', () async {
      // TODO
    });

    // fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalObjectReference nodePublishSecretRef
    test('to test the property `nodePublishSecretRef`', () async {
      // TODO
    });

    // readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
    // BuiltMap<String, String> volumeAttributes
    test('to test the property `volumeAttributes`', () async {
      // TODO
    });

  });
}
