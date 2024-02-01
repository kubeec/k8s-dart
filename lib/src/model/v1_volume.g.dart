// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Volume _$V1VolumeFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Volume',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1Volume(
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
                  : V1AzureFileVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          cephfs: $checkedConvert(
              'cephfs',
              (v) => v == null
                  ? null
                  : V1CephFSVolumeSource.fromJson(v as Map<String, dynamic>)),
          cinder: $checkedConvert(
              'cinder',
              (v) => v == null
                  ? null
                  : V1CinderVolumeSource.fromJson(v as Map<String, dynamic>)),
          configMap: $checkedConvert(
              'configMap',
              (v) => v == null
                  ? null
                  : V1ConfigMapVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          csi: $checkedConvert(
              'csi',
              (v) => v == null
                  ? null
                  : V1CSIVolumeSource.fromJson(v as Map<String, dynamic>)),
          downwardAPI: $checkedConvert(
              'downwardAPI',
              (v) => v == null
                  ? null
                  : V1DownwardAPIVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          emptyDir: $checkedConvert(
              'emptyDir',
              (v) => v == null
                  ? null
                  : V1EmptyDirVolumeSource.fromJson(v as Map<String, dynamic>)),
          ephemeral: $checkedConvert(
              'ephemeral',
              (v) => v == null
                  ? null
                  : V1EphemeralVolumeSource.fromJson(
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
                  : V1FlexVolumeSource.fromJson(v as Map<String, dynamic>)),
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
          gitRepo: $checkedConvert(
              'gitRepo',
              (v) => v == null
                  ? null
                  : V1GitRepoVolumeSource.fromJson(v as Map<String, dynamic>)),
          glusterfs: $checkedConvert(
              'glusterfs',
              (v) => v == null
                  ? null
                  : V1GlusterfsVolumeSource.fromJson(
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
                  : V1ISCSIVolumeSource.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
          nfs: $checkedConvert(
              'nfs',
              (v) => v == null
                  ? null
                  : V1NFSVolumeSource.fromJson(v as Map<String, dynamic>)),
          persistentVolumeClaim: $checkedConvert(
              'persistentVolumeClaim',
              (v) => v == null
                  ? null
                  : V1PersistentVolumeClaimVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
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
          projected: $checkedConvert(
              'projected',
              (v) => v == null
                  ? null
                  : V1ProjectedVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
          quobyte: $checkedConvert(
              'quobyte',
              (v) => v == null
                  ? null
                  : V1QuobyteVolumeSource.fromJson(v as Map<String, dynamic>)),
          rbd: $checkedConvert(
              'rbd',
              (v) => v == null
                  ? null
                  : V1RBDVolumeSource.fromJson(v as Map<String, dynamic>)),
          scaleIO: $checkedConvert(
              'scaleIO',
              (v) => v == null
                  ? null
                  : V1ScaleIOVolumeSource.fromJson(v as Map<String, dynamic>)),
          secret: $checkedConvert(
              'secret',
              (v) => v == null
                  ? null
                  : V1SecretVolumeSource.fromJson(v as Map<String, dynamic>)),
          storageos: $checkedConvert(
              'storageos',
              (v) => v == null
                  ? null
                  : V1StorageOSVolumeSource.fromJson(
                      v as Map<String, dynamic>)),
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

Map<String, dynamic> _$V1VolumeToJson(V1Volume instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('awsElasticBlockStore', instance.awsElasticBlockStore?.toJson());
  writeNotNull('azureDisk', instance.azureDisk?.toJson());
  writeNotNull('azureFile', instance.azureFile?.toJson());
  writeNotNull('cephfs', instance.cephfs?.toJson());
  writeNotNull('cinder', instance.cinder?.toJson());
  writeNotNull('configMap', instance.configMap?.toJson());
  writeNotNull('csi', instance.csi?.toJson());
  writeNotNull('downwardAPI', instance.downwardAPI?.toJson());
  writeNotNull('emptyDir', instance.emptyDir?.toJson());
  writeNotNull('ephemeral', instance.ephemeral?.toJson());
  writeNotNull('fc', instance.fc?.toJson());
  writeNotNull('flexVolume', instance.flexVolume?.toJson());
  writeNotNull('flocker', instance.flocker?.toJson());
  writeNotNull('gcePersistentDisk', instance.gcePersistentDisk?.toJson());
  writeNotNull('gitRepo', instance.gitRepo?.toJson());
  writeNotNull('glusterfs', instance.glusterfs?.toJson());
  writeNotNull('hostPath', instance.hostPath?.toJson());
  writeNotNull('iscsi', instance.iscsi?.toJson());
  val['name'] = instance.name;
  writeNotNull('nfs', instance.nfs?.toJson());
  writeNotNull(
      'persistentVolumeClaim', instance.persistentVolumeClaim?.toJson());
  writeNotNull('photonPersistentDisk', instance.photonPersistentDisk?.toJson());
  writeNotNull('portworxVolume', instance.portworxVolume?.toJson());
  writeNotNull('projected', instance.projected?.toJson());
  writeNotNull('quobyte', instance.quobyte?.toJson());
  writeNotNull('rbd', instance.rbd?.toJson());
  writeNotNull('scaleIO', instance.scaleIO?.toJson());
  writeNotNull('secret', instance.secret?.toJson());
  writeNotNull('storageos', instance.storageos?.toJson());
  writeNotNull('vsphereVolume', instance.vsphereVolume?.toJson());
  return val;
}
