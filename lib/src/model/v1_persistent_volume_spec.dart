//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:k8s/src/model/v1_rbd_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_glusterfs_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_flocker_volume_source.dart';
import 'package:k8s/src/model/v1_quobyte_volume_source.dart';
import 'package:k8s/src/model/v1_storage_os_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_flex_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_vsphere_virtual_disk_volume_source.dart';
import 'package:k8s/src/model/v1_portworx_volume_source.dart';
import 'package:k8s/src/model/v1_azure_disk_volume_source.dart';
import 'package:k8s/src/model/v1_nfs_volume_source.dart';
import 'package:k8s/src/model/v1_fc_volume_source.dart';
import 'package:k8s/src/model/v1_aws_elastic_block_store_volume_source.dart';
import 'package:k8s/src/model/v1_photon_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/v1_csi_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_local_volume_source.dart';
import 'package:k8s/src/model/v1_volume_node_affinity.dart';
import 'package:k8s/src/model/v1_gce_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/v1_iscsi_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_cinder_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_ceph_fs_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_azure_file_persistent_volume_source.dart';
import 'package:k8s/src/model/v1_host_path_volume_source.dart';
import 'package:k8s/src/model/v1_scale_io_persistent_volume_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeSpec {
  /// Returns a new [V1PersistentVolumeSpec] instance.
  V1PersistentVolumeSpec({

     this.accessModes,

     this.awsElasticBlockStore,

     this.azureDisk,

     this.azureFile,

     this.capacity,

     this.cephfs,

     this.cinder,

     this.claimRef,

     this.csi,

     this.fc,

     this.flexVolume,

     this.flocker,

     this.gcePersistentDisk,

     this.glusterfs,

     this.hostPath,

     this.iscsi,

     this.local,

     this.mountOptions,

     this.nfs,

     this.nodeAffinity,

     this.persistentVolumeReclaimPolicy,

     this.photonPersistentDisk,

     this.portworxVolume,

     this.quobyte,

     this.rbd,

     this.scaleIO,

     this.storageClassName,

     this.storageos,

     this.volumeMode,

     this.vsphereVolume,
  });

      /// accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
  @JsonKey(
    
    name: r'accessModes',
    required: false,
    includeIfNull: false
  )


  final List<String>? accessModes;



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


  final V1AzureFilePersistentVolumeSource? azureFile;



      /// capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  @JsonKey(
    
    name: r'capacity',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? capacity;



  @JsonKey(
    
    name: r'cephfs',
    required: false,
    includeIfNull: false
  )


  final V1CephFSPersistentVolumeSource? cephfs;



  @JsonKey(
    
    name: r'cinder',
    required: false,
    includeIfNull: false
  )


  final V1CinderPersistentVolumeSource? cinder;



  @JsonKey(
    
    name: r'claimRef',
    required: false,
    includeIfNull: false
  )


  final V1ObjectReference? claimRef;



  @JsonKey(
    
    name: r'csi',
    required: false,
    includeIfNull: false
  )


  final V1CSIPersistentVolumeSource? csi;



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


  final V1FlexPersistentVolumeSource? flexVolume;



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
    
    name: r'glusterfs',
    required: false,
    includeIfNull: false
  )


  final V1GlusterfsPersistentVolumeSource? glusterfs;



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


  final V1ISCSIPersistentVolumeSource? iscsi;



  @JsonKey(
    
    name: r'local',
    required: false,
    includeIfNull: false
  )


  final V1LocalVolumeSource? local;



      /// mountOptions is the list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
  @JsonKey(
    
    name: r'mountOptions',
    required: false,
    includeIfNull: false
  )


  final List<String>? mountOptions;



  @JsonKey(
    
    name: r'nfs',
    required: false,
    includeIfNull: false
  )


  final V1NFSVolumeSource? nfs;



  @JsonKey(
    
    name: r'nodeAffinity',
    required: false,
    includeIfNull: false
  )


  final V1VolumeNodeAffinity? nodeAffinity;



      /// persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming
  @JsonKey(
    
    name: r'persistentVolumeReclaimPolicy',
    required: false,
    includeIfNull: false
  )


  final String? persistentVolumeReclaimPolicy;



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


  final V1RBDPersistentVolumeSource? rbd;



  @JsonKey(
    
    name: r'scaleIO',
    required: false,
    includeIfNull: false
  )


  final V1ScaleIOPersistentVolumeSource? scaleIO;



      /// storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  @JsonKey(
    
    name: r'storageClassName',
    required: false,
    includeIfNull: false
  )


  final String? storageClassName;



  @JsonKey(
    
    name: r'storageos',
    required: false,
    includeIfNull: false
  )


  final V1StorageOSPersistentVolumeSource? storageos;



      /// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  @JsonKey(
    
    name: r'volumeMode',
    required: false,
    includeIfNull: false
  )


  final String? volumeMode;



  @JsonKey(
    
    name: r'vsphereVolume',
    required: false,
    includeIfNull: false
  )


  final V1VsphereVirtualDiskVolumeSource? vsphereVolume;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeSpec &&
     other.accessModes == accessModes &&
     other.awsElasticBlockStore == awsElasticBlockStore &&
     other.azureDisk == azureDisk &&
     other.azureFile == azureFile &&
     other.capacity == capacity &&
     other.cephfs == cephfs &&
     other.cinder == cinder &&
     other.claimRef == claimRef &&
     other.csi == csi &&
     other.fc == fc &&
     other.flexVolume == flexVolume &&
     other.flocker == flocker &&
     other.gcePersistentDisk == gcePersistentDisk &&
     other.glusterfs == glusterfs &&
     other.hostPath == hostPath &&
     other.iscsi == iscsi &&
     other.local == local &&
     other.mountOptions == mountOptions &&
     other.nfs == nfs &&
     other.nodeAffinity == nodeAffinity &&
     other.persistentVolumeReclaimPolicy == persistentVolumeReclaimPolicy &&
     other.photonPersistentDisk == photonPersistentDisk &&
     other.portworxVolume == portworxVolume &&
     other.quobyte == quobyte &&
     other.rbd == rbd &&
     other.scaleIO == scaleIO &&
     other.storageClassName == storageClassName &&
     other.storageos == storageos &&
     other.volumeMode == volumeMode &&
     other.vsphereVolume == vsphereVolume;

  @override
  int get hashCode =>
    accessModes.hashCode +
    awsElasticBlockStore.hashCode +
    azureDisk.hashCode +
    azureFile.hashCode +
    capacity.hashCode +
    cephfs.hashCode +
    cinder.hashCode +
    claimRef.hashCode +
    csi.hashCode +
    fc.hashCode +
    flexVolume.hashCode +
    flocker.hashCode +
    gcePersistentDisk.hashCode +
    glusterfs.hashCode +
    hostPath.hashCode +
    iscsi.hashCode +
    local.hashCode +
    mountOptions.hashCode +
    nfs.hashCode +
    nodeAffinity.hashCode +
    persistentVolumeReclaimPolicy.hashCode +
    photonPersistentDisk.hashCode +
    portworxVolume.hashCode +
    quobyte.hashCode +
    rbd.hashCode +
    scaleIO.hashCode +
    storageClassName.hashCode +
    storageos.hashCode +
    volumeMode.hashCode +
    vsphereVolume.hashCode;

  factory V1PersistentVolumeSpec.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

