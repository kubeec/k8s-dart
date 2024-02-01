// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolumeSpec _$V1PersistentVolumeSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PersistentVolumeSpec',
      json,
      ($checkedConvert) {
        final val = V1PersistentVolumeSpec(
          accessModes: $checkedConvert('accessModes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          awsElasticBlockStore: $checkedConvert(
              'awsElasticBlockStore',
              (v) => v == null
                  ? null
                  : V1AWSElasticBlockStoreVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          azureDisk: $checkedConvert(
              'azureDisk',
              (v) => v == null
                  ? null
                  : V1AzureDiskVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          azureFile: $checkedConvert(
              'azureFile',
              (v) => v == null
                  ? null
                  : V1AzureFilePersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          capacity: $checkedConvert(
              'capacity',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          cephfs: $checkedConvert(
              'cephfs',
              (v) => v == null
                  ? null
                  : V1CephFSPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          cinder: $checkedConvert(
              'cinder',
              (v) => v == null
                  ? null
                  : V1CinderPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          claimRef: $checkedConvert(
              'claimRef',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          csi: $checkedConvert(
              'csi',
              (v) => v == null
                  ? null
                  : V1CSIPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          fc: $checkedConvert(
              'fc',
              (v) => v == null
                  ? null
                  : V1FCVolumeSource.fromJson(v as Map<String, dynamic>)),
          flexVolume: $checkedConvert(
              'flexVolume',
              (v) => v == null
                  ? null
                  : V1FlexPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          flocker: $checkedConvert(
              'flocker',
              (v) => v == null
                  ? null
                  : V1FlockerVolumeSource.fromJson(v as Map<String, dynamic>)),
          gcePersistentDisk: $checkedConvert(
              'gcePersistentDisk',
              (v) => v == null
                  ? null
                  : V1GCEPersistentDiskVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          glusterfs: $checkedConvert(
              'glusterfs',
              (v) => v == null
                  ? null
                  : V1GlusterfsPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          hostPath: $checkedConvert(
              'hostPath',
              (v) => v == null
                  ? null
                  : V1HostPathVolumeSource.fromJson(v as Map<String, dynamic>)),
          iscsi: $checkedConvert(
              'iscsi',
              (v) => v == null
                  ? null
                  : V1ISCSIPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          local: $checkedConvert(
              'local',
              (v) => v == null
                  ? null
                  : V1LocalVolumeSource.fromJson(v as Map<String, dynamic>)),
          mountOptions: $checkedConvert('mountOptions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          nfs: $checkedConvert(
              'nfs',
              (v) => v == null
                  ? null
                  : V1NFSVolumeSource.fromJson(v as Map<String, dynamic>)),
          nodeAffinity: $checkedConvert(
              'nodeAffinity',
              (v) => v == null
                  ? null
                  : V1VolumeNodeAffinity.fromJson(v as Map<String, dynamic>)),
          persistentVolumeReclaimPolicy: $checkedConvert(
              'persistentVolumeReclaimPolicy', (v) => v as String?),
          photonPersistentDisk: $checkedConvert(
              'photonPersistentDisk',
              (v) => v == null
                  ? null
                  : V1PhotonPersistentDiskVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          portworxVolume: $checkedConvert(
              'portworxVolume',
              (v) => v == null
                  ? null
                  : V1PortworxVolumeSource.fromJson(v as Map<String, dynamic>)),
          quobyte: $checkedConvert(
              'quobyte',
              (v) => v == null
                  ? null
                  : V1QuobyteVolumeSource.fromJson(v as Map<String, dynamic>)),
          rbd: $checkedConvert(
              'rbd',
              (v) => v == null
                  ? null
                  : V1RBDPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          scaleIO: $checkedConvert(
              'scaleIO',
              (v) => v == null
                  ? null
                  : V1ScaleIOPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          storageClassName:
              $checkedConvert('storageClassName', (v) => v as String?),
          storageos: $checkedConvert(
              'storageos',
              (v) => v == null
                  ? null
                  : V1StorageOSPersistentVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          volumeMode: $checkedConvert('volumeMode', (v) => v as String?),
          vsphereVolume: $checkedConvert(
              'vsphereVolume',
              (v) => v == null
                  ? null
                  : V1VsphereVirtualDiskVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PersistentVolumeSpecToJson(
    V1PersistentVolumeSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accessModes', instance.accessModes);
  writeNotNull('awsElasticBlockStore', instance.awsElasticBlockStore?.toJson());
  writeNotNull('azureDisk', instance.azureDisk?.toJson());
  writeNotNull('azureFile', instance.azureFile?.toJson());
  writeNotNull('capacity', instance.capacity);
  writeNotNull('cephfs', instance.cephfs?.toJson());
  writeNotNull('cinder', instance.cinder?.toJson());
  writeNotNull('claimRef', instance.claimRef?.toJson());
  writeNotNull('csi', instance.csi?.toJson());
  writeNotNull('fc', instance.fc?.toJson());
  writeNotNull('flexVolume', instance.flexVolume?.toJson());
  writeNotNull('flocker', instance.flocker?.toJson());
  writeNotNull('gcePersistentDisk', instance.gcePersistentDisk?.toJson());
  writeNotNull('glusterfs', instance.glusterfs?.toJson());
  writeNotNull('hostPath', instance.hostPath?.toJson());
  writeNotNull('iscsi', instance.iscsi?.toJson());
  writeNotNull('local', instance.local?.toJson());
  writeNotNull('mountOptions', instance.mountOptions);
  writeNotNull('nfs', instance.nfs?.toJson());
  writeNotNull('nodeAffinity', instance.nodeAffinity?.toJson());
  writeNotNull(
      'persistentVolumeReclaimPolicy', instance.persistentVolumeReclaimPolicy);
  writeNotNull('photonPersistentDisk', instance.photonPersistentDisk?.toJson());
  writeNotNull('portworxVolume', instance.portworxVolume?.toJson());
  writeNotNull('quobyte', instance.quobyte?.toJson());
  writeNotNull('rbd', instance.rbd?.toJson());
  writeNotNull('scaleIO', instance.scaleIO?.toJson());
  writeNotNull('storageClassName', instance.storageClassName);
  writeNotNull('storageos', instance.storageos?.toJson());
  writeNotNull('volumeMode', instance.volumeMode);
  writeNotNull('vsphereVolume', instance.vsphereVolume?.toJson());
  return val;
}
