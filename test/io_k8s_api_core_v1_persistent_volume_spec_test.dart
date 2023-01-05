//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiCoreV1PersistentVolumeSpec
void main() {
  // final instance = IoK8sApiCoreV1PersistentVolumeSpec();

  group('test IoK8sApiCoreV1PersistentVolumeSpec', () {
    // accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
    // List<String> accessModes (default value: const [])
    test('to test the property `accessModes`', () async {
      // TODO
    });

    // IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource awsElasticBlockStore
    test('to test the property `awsElasticBlockStore`', () async {
      // TODO
    });

    // IoK8sApiCoreV1AzureDiskVolumeSource azureDisk
    test('to test the property `azureDisk`', () async {
      // TODO
    });

    // IoK8sApiCoreV1AzureFilePersistentVolumeSource azureFile
    test('to test the property `azureFile`', () async {
      // TODO
    });

    // capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
    // Map<String, String> capacity (default value: const {})
    test('to test the property `capacity`', () async {
      // TODO
    });

    // IoK8sApiCoreV1CephFSPersistentVolumeSource cephfs
    test('to test the property `cephfs`', () async {
      // TODO
    });

    // IoK8sApiCoreV1CinderPersistentVolumeSource cinder
    test('to test the property `cinder`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ObjectReference claimRef
    test('to test the property `claimRef`', () async {
      // TODO
    });

    // IoK8sApiCoreV1CSIPersistentVolumeSource csi
    test('to test the property `csi`', () async {
      // TODO
    });

    // IoK8sApiCoreV1FCVolumeSource fc
    test('to test the property `fc`', () async {
      // TODO
    });

    // IoK8sApiCoreV1FlexPersistentVolumeSource flexVolume
    test('to test the property `flexVolume`', () async {
      // TODO
    });

    // IoK8sApiCoreV1FlockerVolumeSource flocker
    test('to test the property `flocker`', () async {
      // TODO
    });

    // IoK8sApiCoreV1GCEPersistentDiskVolumeSource gcePersistentDisk
    test('to test the property `gcePersistentDisk`', () async {
      // TODO
    });

    // IoK8sApiCoreV1GlusterfsPersistentVolumeSource glusterfs
    test('to test the property `glusterfs`', () async {
      // TODO
    });

    // IoK8sApiCoreV1HostPathVolumeSource hostPath
    test('to test the property `hostPath`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ISCSIPersistentVolumeSource iscsi
    test('to test the property `iscsi`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalVolumeSource local
    test('to test the property `local`', () async {
      // TODO
    });

    // mountOptions is the list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
    // List<String> mountOptions (default value: const [])
    test('to test the property `mountOptions`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NFSVolumeSource nfs
    test('to test the property `nfs`', () async {
      // TODO
    });

    // IoK8sApiCoreV1VolumeNodeAffinity nodeAffinity
    test('to test the property `nodeAffinity`', () async {
      // TODO
    });

    // persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming  
    // String persistentVolumeReclaimPolicy
    test('to test the property `persistentVolumeReclaimPolicy`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PhotonPersistentDiskVolumeSource photonPersistentDisk
    test('to test the property `photonPersistentDisk`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PortworxVolumeSource portworxVolume
    test('to test the property `portworxVolume`', () async {
      // TODO
    });

    // IoK8sApiCoreV1QuobyteVolumeSource quobyte
    test('to test the property `quobyte`', () async {
      // TODO
    });

    // IoK8sApiCoreV1RBDPersistentVolumeSource rbd
    test('to test the property `rbd`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ScaleIOPersistentVolumeSource scaleIO
    test('to test the property `scaleIO`', () async {
      // TODO
    });

    // storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    // String storageClassName
    test('to test the property `storageClassName`', () async {
      // TODO
    });

    // IoK8sApiCoreV1StorageOSPersistentVolumeSource storageos
    test('to test the property `storageos`', () async {
      // TODO
    });

    // volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
    // String volumeMode
    test('to test the property `volumeMode`', () async {
      // TODO
    });

    // IoK8sApiCoreV1VsphereVirtualDiskVolumeSource vsphereVolume
    test('to test the property `vsphereVolume`', () async {
      // TODO
    });


  });

}
