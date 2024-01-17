//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_config_map_volume_source.dart';
import 'package:k8s/src/model/v1_ceph_fs_volume_source.dart';
import 'package:k8s/src/model/v1_azure_file_volume_source.dart';
import 'package:k8s/src/model/v1_quobyte_volume_source.dart';
import 'package:k8s/src/model/v1_secret_volume_source.dart';
import 'package:k8s/src/model/v1_scale_io_volume_source.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim_volume_source.dart';
import 'package:k8s/src/model/v1_projected_volume_source.dart';
import 'package:k8s/src/model/v1_ephemeral_volume_source.dart';
import 'package:k8s/src/model/v1_vsphere_virtual_disk_volume_source.dart';
import 'package:k8s/src/model/v1_portworx_volume_source.dart';
import 'package:k8s/src/model/v1_rbd_volume_source.dart';
import 'package:k8s/src/model/v1_csi_volume_source.dart';
import 'package:k8s/src/model/v1_fc_volume_source.dart';
import 'package:k8s/src/model/v1_iscsi_volume_source.dart';
import 'package:k8s/src/model/v1_photon_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/v1_gce_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/v1_glusterfs_volume_source.dart';
import 'package:k8s/src/model/v1_cinder_volume_source.dart';
import 'package:k8s/src/model/v1_empty_dir_volume_source.dart';
import 'package:k8s/src/model/v1_git_repo_volume_source.dart';
import 'package:k8s/src/model/v1_flocker_volume_source.dart';
import 'package:k8s/src/model/v1_storage_os_volume_source.dart';
import 'package:k8s/src/model/v1_azure_disk_volume_source.dart';
import 'package:k8s/src/model/v1_nfs_volume_source.dart';
import 'package:k8s/src/model/v1_flex_volume_source.dart';
import 'package:k8s/src/model/v1_aws_elastic_block_store_volume_source.dart';
import 'package:k8s/src/model/v1_downward_api_volume_source.dart';
import 'package:k8s/src/model/v1_host_path_volume_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Volume {
  /// Returns a new [V1Volume] instance.
  V1Volume({

     this.awsElasticBlockStore,

     this.azureDisk,

     this.azureFile,

     this.cephfs,

     this.cinder,

     this.configMap,

     this.csi,

     this.downwardAPI,

     this.emptyDir,

     this.ephemeral,

     this.fc,

     this.flexVolume,

     this.flocker,

     this.gcePersistentDisk,

     this.gitRepo,

     this.glusterfs,

     this.hostPath,

     this.iscsi,

    required  this.name,

     this.nfs,

     this.persistentVolumeClaim,

     this.photonPersistentDisk,

     this.portworxVolume,

     this.projected,

     this.quobyte,

     this.rbd,

     this.scaleIO,

     this.secret,

     this.storageos,

     this.vsphereVolume,
  });

  @JsonKey(
    
    name: r'awsElasticBlockStore',
    required: false,
    includeIfNull: false
  )


  final V1AWSElasticBlockStoreVolumeSource? awsElasticBlockStore;



  @JsonKey(
    
    name: r'azureDisk',
    required: false,
    includeIfNull: false
  )


  final V1AzureDiskVolumeSource? azureDisk;



  @JsonKey(
    
    name: r'azureFile',
    required: false,
    includeIfNull: false
  )


  final V1AzureFileVolumeSource? azureFile;



  @JsonKey(
    
    name: r'cephfs',
    required: false,
    includeIfNull: false
  )


  final V1CephFSVolumeSource? cephfs;



  @JsonKey(
    
    name: r'cinder',
    required: false,
    includeIfNull: false
  )


  final V1CinderVolumeSource? cinder;



  @JsonKey(
    
    name: r'configMap',
    required: false,
    includeIfNull: false
  )


  final V1ConfigMapVolumeSource? configMap;



  @JsonKey(
    
    name: r'csi',
    required: false,
    includeIfNull: false
  )


  final V1CSIVolumeSource? csi;



  @JsonKey(
    
    name: r'downwardAPI',
    required: false,
    includeIfNull: false
  )


  final V1DownwardAPIVolumeSource? downwardAPI;



  @JsonKey(
    
    name: r'emptyDir',
    required: false,
    includeIfNull: false
  )


  final V1EmptyDirVolumeSource? emptyDir;



  @JsonKey(
    
    name: r'ephemeral',
    required: false,
    includeIfNull: false
  )


  final V1EphemeralVolumeSource? ephemeral;



  @JsonKey(
    
    name: r'fc',
    required: false,
    includeIfNull: false
  )


  final V1FCVolumeSource? fc;



  @JsonKey(
    
    name: r'flexVolume',
    required: false,
    includeIfNull: false
  )


  final V1FlexVolumeSource? flexVolume;



  @JsonKey(
    
    name: r'flocker',
    required: false,
    includeIfNull: false
  )


  final V1FlockerVolumeSource? flocker;



  @JsonKey(
    
    name: r'gcePersistentDisk',
    required: false,
    includeIfNull: false
  )


  final V1GCEPersistentDiskVolumeSource? gcePersistentDisk;



  @JsonKey(
    
    name: r'gitRepo',
    required: false,
    includeIfNull: false
  )


  final V1GitRepoVolumeSource? gitRepo;



  @JsonKey(
    
    name: r'glusterfs',
    required: false,
    includeIfNull: false
  )


  final V1GlusterfsVolumeSource? glusterfs;



  @JsonKey(
    
    name: r'hostPath',
    required: false,
    includeIfNull: false
  )


  final V1HostPathVolumeSource? hostPath;



  @JsonKey(
    
    name: r'iscsi',
    required: false,
    includeIfNull: false
  )


  final V1ISCSIVolumeSource? iscsi;



      /// name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'nfs',
    required: false,
    includeIfNull: false
  )


  final V1NFSVolumeSource? nfs;



  @JsonKey(
    
    name: r'persistentVolumeClaim',
    required: false,
    includeIfNull: false
  )


  final V1PersistentVolumeClaimVolumeSource? persistentVolumeClaim;



  @JsonKey(
    
    name: r'photonPersistentDisk',
    required: false,
    includeIfNull: false
  )


  final V1PhotonPersistentDiskVolumeSource? photonPersistentDisk;



  @JsonKey(
    
    name: r'portworxVolume',
    required: false,
    includeIfNull: false
  )


  final V1PortworxVolumeSource? portworxVolume;



  @JsonKey(
    
    name: r'projected',
    required: false,
    includeIfNull: false
  )


  final V1ProjectedVolumeSource? projected;



  @JsonKey(
    
    name: r'quobyte',
    required: false,
    includeIfNull: false
  )


  final V1QuobyteVolumeSource? quobyte;



  @JsonKey(
    
    name: r'rbd',
    required: false,
    includeIfNull: false
  )


  final V1RBDVolumeSource? rbd;



  @JsonKey(
    
    name: r'scaleIO',
    required: false,
    includeIfNull: false
  )


  final V1ScaleIOVolumeSource? scaleIO;



  @JsonKey(
    
    name: r'secret',
    required: false,
    includeIfNull: false
  )


  final V1SecretVolumeSource? secret;



  @JsonKey(
    
    name: r'storageos',
    required: false,
    includeIfNull: false
  )


  final V1StorageOSVolumeSource? storageos;



  @JsonKey(
    
    name: r'vsphereVolume',
    required: false,
    includeIfNull: false
  )


  final V1VsphereVirtualDiskVolumeSource? vsphereVolume;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Volume &&
     other.awsElasticBlockStore == awsElasticBlockStore &&
     other.azureDisk == azureDisk &&
     other.azureFile == azureFile &&
     other.cephfs == cephfs &&
     other.cinder == cinder &&
     other.configMap == configMap &&
     other.csi == csi &&
     other.downwardAPI == downwardAPI &&
     other.emptyDir == emptyDir &&
     other.ephemeral == ephemeral &&
     other.fc == fc &&
     other.flexVolume == flexVolume &&
     other.flocker == flocker &&
     other.gcePersistentDisk == gcePersistentDisk &&
     other.gitRepo == gitRepo &&
     other.glusterfs == glusterfs &&
     other.hostPath == hostPath &&
     other.iscsi == iscsi &&
     other.name == name &&
     other.nfs == nfs &&
     other.persistentVolumeClaim == persistentVolumeClaim &&
     other.photonPersistentDisk == photonPersistentDisk &&
     other.portworxVolume == portworxVolume &&
     other.projected == projected &&
     other.quobyte == quobyte &&
     other.rbd == rbd &&
     other.scaleIO == scaleIO &&
     other.secret == secret &&
     other.storageos == storageos &&
     other.vsphereVolume == vsphereVolume;

  @override
  int get hashCode =>
    awsElasticBlockStore.hashCode +
    azureDisk.hashCode +
    azureFile.hashCode +
    cephfs.hashCode +
    cinder.hashCode +
    configMap.hashCode +
    csi.hashCode +
    downwardAPI.hashCode +
    emptyDir.hashCode +
    ephemeral.hashCode +
    fc.hashCode +
    flexVolume.hashCode +
    flocker.hashCode +
    gcePersistentDisk.hashCode +
    gitRepo.hashCode +
    glusterfs.hashCode +
    hostPath.hashCode +
    iscsi.hashCode +
    name.hashCode +
    nfs.hashCode +
    persistentVolumeClaim.hashCode +
    photonPersistentDisk.hashCode +
    portworxVolume.hashCode +
    projected.hashCode +
    quobyte.hashCode +
    rbd.hashCode +
    scaleIO.hashCode +
    secret.hashCode +
    storageos.hashCode +
    vsphereVolume.hashCode;

  factory V1Volume.fromJson(Map<String, dynamic> json) => _$V1VolumeFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

