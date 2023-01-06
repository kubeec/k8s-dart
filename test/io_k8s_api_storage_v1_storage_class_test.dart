import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1StorageClass
void main() {
  final instance = IoK8sApiStorageV1StorageClassBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1StorageClass, () {
    // AllowVolumeExpansion shows whether the storage class allow volume expand
    // bool allowVolumeExpansion
    test('to test the property `allowVolumeExpansion`', () async {
      // TODO
    });

    // Restrict the node topologies where volumes can be dynamically provisioned. Each volume plugin defines its own supported topology specifications. An empty TopologySelectorTerm list means there is no topology restriction. This field is only honored by servers that enable the VolumeScheduling feature.
    // BuiltList<IoK8sApiCoreV1TopologySelectorTerm> allowedTopologies
    test('to test the property `allowedTopologies`', () async {
      // TODO
    });

    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ObjectMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Dynamically provisioned PersistentVolumes of this storage class are created with these mountOptions, e.g. [\"ro\", \"soft\"]. Not validated - mount of the PVs will simply fail if one is invalid.
    // BuiltList<String> mountOptions
    test('to test the property `mountOptions`', () async {
      // TODO
    });

    // Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    // BuiltMap<String, String> parameters
    test('to test the property `parameters`', () async {
      // TODO
    });

    // Provisioner indicates the type of the provisioner.
    // String provisioner
    test('to test the property `provisioner`', () async {
      // TODO
    });

    // Dynamically provisioned PersistentVolumes of this storage class are created with this reclaimPolicy. Defaults to Delete.
    // String reclaimPolicy
    test('to test the property `reclaimPolicy`', () async {
      // TODO
    });

    // VolumeBindingMode indicates how PersistentVolumeClaims should be provisioned and bound.  When unset, VolumeBindingImmediate is used. This field is only honored by servers that enable the VolumeScheduling feature.
    // String volumeBindingMode
    test('to test the property `volumeBindingMode`', () async {
      // TODO
    });

  });
}
