import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PersistentVolumeClaimSpec
void main() {
  final instance = IoK8sApiCoreV1PersistentVolumeClaimSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PersistentVolumeClaimSpec, () {
    // accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    // BuiltList<String> accessModes
    test('to test the property `accessModes`', () async {
      // TODO
    });

    // IoK8sApiCoreV1TypedLocalObjectReference dataSource
    test('to test the property `dataSource`', () async {
      // TODO
    });

    // IoK8sApiCoreV1TypedObjectReference dataSourceRef
    test('to test the property `dataSourceRef`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ResourceRequirements resources
    test('to test the property `resources`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector selector
    test('to test the property `selector`', () async {
      // TODO
    });

    // storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
    // String storageClassName
    test('to test the property `storageClassName`', () async {
      // TODO
    });

    // volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
    // String volumeMode
    test('to test the property `volumeMode`', () async {
      // TODO
    });

    // volumeName is the binding reference to the PersistentVolume backing this claim.
    // String volumeName
    test('to test the property `volumeName`', () async {
      // TODO
    });

  });
}
