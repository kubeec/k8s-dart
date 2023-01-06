//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_ceph_fs_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flocker_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_storage_os_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_cinder_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_aws_elastic_block_store_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_local_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_glusterfs_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_file_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_fc_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_csi_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_quobyte_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_vsphere_virtual_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_node_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_nfs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_portworx_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_host_path_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scale_io_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_gce_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_photon_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flex_persistent_volume_source.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_iscsi_persistent_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_rbd_persistent_volume_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_persistent_volume_spec.g.dart';

/// PersistentVolumeSpec is the specification of a persistent volume.
///
/// Properties:
/// * [accessModes] - accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
/// * [awsElasticBlockStore] 
/// * [azureDisk] 
/// * [azureFile] 
/// * [capacity] - capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
/// * [cephfs] 
/// * [cinder] 
/// * [claimRef] 
/// * [csi] 
/// * [fc] 
/// * [flexVolume] 
/// * [flocker] 
/// * [gcePersistentDisk] 
/// * [glusterfs] 
/// * [hostPath] 
/// * [iscsi] 
/// * [local] 
/// * [mountOptions] - mountOptions is the list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
/// * [nfs] 
/// * [nodeAffinity] 
/// * [persistentVolumeReclaimPolicy] - persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming  
/// * [photonPersistentDisk] 
/// * [portworxVolume] 
/// * [quobyte] 
/// * [rbd] 
/// * [scaleIO] 
/// * [storageClassName] - storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
/// * [storageos] 
/// * [volumeMode] - volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
/// * [vsphereVolume] 
@BuiltValue()
abstract class IoK8sApiCoreV1PersistentVolumeSpec implements Built<IoK8sApiCoreV1PersistentVolumeSpec, IoK8sApiCoreV1PersistentVolumeSpecBuilder> {
  /// accessModes contains all ways the volume can be mounted. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes
  @BuiltValueField(wireName: r'accessModes')
  BuiltList<String>? get accessModes;

  @BuiltValueField(wireName: r'awsElasticBlockStore')
  IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource? get awsElasticBlockStore;

  @BuiltValueField(wireName: r'azureDisk')
  IoK8sApiCoreV1AzureDiskVolumeSource? get azureDisk;

  @BuiltValueField(wireName: r'azureFile')
  IoK8sApiCoreV1AzureFilePersistentVolumeSource? get azureFile;

  /// capacity is the description of the persistent volume's resources and capacity. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  @BuiltValueField(wireName: r'capacity')
  BuiltMap<String, String>? get capacity;

  @BuiltValueField(wireName: r'cephfs')
  IoK8sApiCoreV1CephFSPersistentVolumeSource? get cephfs;

  @BuiltValueField(wireName: r'cinder')
  IoK8sApiCoreV1CinderPersistentVolumeSource? get cinder;

  @BuiltValueField(wireName: r'claimRef')
  IoK8sApiCoreV1ObjectReference? get claimRef;

  @BuiltValueField(wireName: r'csi')
  IoK8sApiCoreV1CSIPersistentVolumeSource? get csi;

  @BuiltValueField(wireName: r'fc')
  IoK8sApiCoreV1FCVolumeSource? get fc;

  @BuiltValueField(wireName: r'flexVolume')
  IoK8sApiCoreV1FlexPersistentVolumeSource? get flexVolume;

  @BuiltValueField(wireName: r'flocker')
  IoK8sApiCoreV1FlockerVolumeSource? get flocker;

  @BuiltValueField(wireName: r'gcePersistentDisk')
  IoK8sApiCoreV1GCEPersistentDiskVolumeSource? get gcePersistentDisk;

  @BuiltValueField(wireName: r'glusterfs')
  IoK8sApiCoreV1GlusterfsPersistentVolumeSource? get glusterfs;

  @BuiltValueField(wireName: r'hostPath')
  IoK8sApiCoreV1HostPathVolumeSource? get hostPath;

  @BuiltValueField(wireName: r'iscsi')
  IoK8sApiCoreV1ISCSIPersistentVolumeSource? get iscsi;

  @BuiltValueField(wireName: r'local')
  IoK8sApiCoreV1LocalVolumeSource? get local;

  /// mountOptions is the list of mount options, e.g. [\"ro\", \"soft\"]. Not validated - mount will simply fail if one is invalid. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options
  @BuiltValueField(wireName: r'mountOptions')
  BuiltList<String>? get mountOptions;

  @BuiltValueField(wireName: r'nfs')
  IoK8sApiCoreV1NFSVolumeSource? get nfs;

  @BuiltValueField(wireName: r'nodeAffinity')
  IoK8sApiCoreV1VolumeNodeAffinity? get nodeAffinity;

  /// persistentVolumeReclaimPolicy defines what happens to a persistent volume when released from its claim. Valid options are Retain (default for manually created PersistentVolumes), Delete (default for dynamically provisioned PersistentVolumes), and Recycle (deprecated). Recycle must be supported by the volume plugin underlying this PersistentVolume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming  
  @BuiltValueField(wireName: r'persistentVolumeReclaimPolicy')
  String? get persistentVolumeReclaimPolicy;

  @BuiltValueField(wireName: r'photonPersistentDisk')
  IoK8sApiCoreV1PhotonPersistentDiskVolumeSource? get photonPersistentDisk;

  @BuiltValueField(wireName: r'portworxVolume')
  IoK8sApiCoreV1PortworxVolumeSource? get portworxVolume;

  @BuiltValueField(wireName: r'quobyte')
  IoK8sApiCoreV1QuobyteVolumeSource? get quobyte;

  @BuiltValueField(wireName: r'rbd')
  IoK8sApiCoreV1RBDPersistentVolumeSource? get rbd;

  @BuiltValueField(wireName: r'scaleIO')
  IoK8sApiCoreV1ScaleIOPersistentVolumeSource? get scaleIO;

  /// storageClassName is the name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
  @BuiltValueField(wireName: r'storageClassName')
  String? get storageClassName;

  @BuiltValueField(wireName: r'storageos')
  IoK8sApiCoreV1StorageOSPersistentVolumeSource? get storageos;

  /// volumeMode defines if a volume is intended to be used with a formatted filesystem or to remain in raw block state. Value of Filesystem is implied when not included in spec.
  @BuiltValueField(wireName: r'volumeMode')
  String? get volumeMode;

  @BuiltValueField(wireName: r'vsphereVolume')
  IoK8sApiCoreV1VsphereVirtualDiskVolumeSource? get vsphereVolume;

  IoK8sApiCoreV1PersistentVolumeSpec._();

  factory IoK8sApiCoreV1PersistentVolumeSpec([void updates(IoK8sApiCoreV1PersistentVolumeSpecBuilder b)]) = _$IoK8sApiCoreV1PersistentVolumeSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PersistentVolumeSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PersistentVolumeSpec> get serializer => _$IoK8sApiCoreV1PersistentVolumeSpecSerializer();
}

class _$IoK8sApiCoreV1PersistentVolumeSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PersistentVolumeSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PersistentVolumeSpec, _$IoK8sApiCoreV1PersistentVolumeSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1PersistentVolumeSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessModes != null) {
      yield r'accessModes';
      yield serializers.serialize(
        object.accessModes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.awsElasticBlockStore != null) {
      yield r'awsElasticBlockStore';
      yield serializers.serialize(
        object.awsElasticBlockStore,
        specifiedType: const FullType(IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource),
      );
    }
    if (object.azureDisk != null) {
      yield r'azureDisk';
      yield serializers.serialize(
        object.azureDisk,
        specifiedType: const FullType(IoK8sApiCoreV1AzureDiskVolumeSource),
      );
    }
    if (object.azureFile != null) {
      yield r'azureFile';
      yield serializers.serialize(
        object.azureFile,
        specifiedType: const FullType(IoK8sApiCoreV1AzureFilePersistentVolumeSource),
      );
    }
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.cephfs != null) {
      yield r'cephfs';
      yield serializers.serialize(
        object.cephfs,
        specifiedType: const FullType(IoK8sApiCoreV1CephFSPersistentVolumeSource),
      );
    }
    if (object.cinder != null) {
      yield r'cinder';
      yield serializers.serialize(
        object.cinder,
        specifiedType: const FullType(IoK8sApiCoreV1CinderPersistentVolumeSource),
      );
    }
    if (object.claimRef != null) {
      yield r'claimRef';
      yield serializers.serialize(
        object.claimRef,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
    if (object.csi != null) {
      yield r'csi';
      yield serializers.serialize(
        object.csi,
        specifiedType: const FullType(IoK8sApiCoreV1CSIPersistentVolumeSource),
      );
    }
    if (object.fc != null) {
      yield r'fc';
      yield serializers.serialize(
        object.fc,
        specifiedType: const FullType(IoK8sApiCoreV1FCVolumeSource),
      );
    }
    if (object.flexVolume != null) {
      yield r'flexVolume';
      yield serializers.serialize(
        object.flexVolume,
        specifiedType: const FullType(IoK8sApiCoreV1FlexPersistentVolumeSource),
      );
    }
    if (object.flocker != null) {
      yield r'flocker';
      yield serializers.serialize(
        object.flocker,
        specifiedType: const FullType(IoK8sApiCoreV1FlockerVolumeSource),
      );
    }
    if (object.gcePersistentDisk != null) {
      yield r'gcePersistentDisk';
      yield serializers.serialize(
        object.gcePersistentDisk,
        specifiedType: const FullType(IoK8sApiCoreV1GCEPersistentDiskVolumeSource),
      );
    }
    if (object.glusterfs != null) {
      yield r'glusterfs';
      yield serializers.serialize(
        object.glusterfs,
        specifiedType: const FullType(IoK8sApiCoreV1GlusterfsPersistentVolumeSource),
      );
    }
    if (object.hostPath != null) {
      yield r'hostPath';
      yield serializers.serialize(
        object.hostPath,
        specifiedType: const FullType(IoK8sApiCoreV1HostPathVolumeSource),
      );
    }
    if (object.iscsi != null) {
      yield r'iscsi';
      yield serializers.serialize(
        object.iscsi,
        specifiedType: const FullType(IoK8sApiCoreV1ISCSIPersistentVolumeSource),
      );
    }
    if (object.local != null) {
      yield r'local';
      yield serializers.serialize(
        object.local,
        specifiedType: const FullType(IoK8sApiCoreV1LocalVolumeSource),
      );
    }
    if (object.mountOptions != null) {
      yield r'mountOptions';
      yield serializers.serialize(
        object.mountOptions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.nfs != null) {
      yield r'nfs';
      yield serializers.serialize(
        object.nfs,
        specifiedType: const FullType(IoK8sApiCoreV1NFSVolumeSource),
      );
    }
    if (object.nodeAffinity != null) {
      yield r'nodeAffinity';
      yield serializers.serialize(
        object.nodeAffinity,
        specifiedType: const FullType(IoK8sApiCoreV1VolumeNodeAffinity),
      );
    }
    if (object.persistentVolumeReclaimPolicy != null) {
      yield r'persistentVolumeReclaimPolicy';
      yield serializers.serialize(
        object.persistentVolumeReclaimPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.photonPersistentDisk != null) {
      yield r'photonPersistentDisk';
      yield serializers.serialize(
        object.photonPersistentDisk,
        specifiedType: const FullType(IoK8sApiCoreV1PhotonPersistentDiskVolumeSource),
      );
    }
    if (object.portworxVolume != null) {
      yield r'portworxVolume';
      yield serializers.serialize(
        object.portworxVolume,
        specifiedType: const FullType(IoK8sApiCoreV1PortworxVolumeSource),
      );
    }
    if (object.quobyte != null) {
      yield r'quobyte';
      yield serializers.serialize(
        object.quobyte,
        specifiedType: const FullType(IoK8sApiCoreV1QuobyteVolumeSource),
      );
    }
    if (object.rbd != null) {
      yield r'rbd';
      yield serializers.serialize(
        object.rbd,
        specifiedType: const FullType(IoK8sApiCoreV1RBDPersistentVolumeSource),
      );
    }
    if (object.scaleIO != null) {
      yield r'scaleIO';
      yield serializers.serialize(
        object.scaleIO,
        specifiedType: const FullType(IoK8sApiCoreV1ScaleIOPersistentVolumeSource),
      );
    }
    if (object.storageClassName != null) {
      yield r'storageClassName';
      yield serializers.serialize(
        object.storageClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.storageos != null) {
      yield r'storageos';
      yield serializers.serialize(
        object.storageos,
        specifiedType: const FullType(IoK8sApiCoreV1StorageOSPersistentVolumeSource),
      );
    }
    if (object.volumeMode != null) {
      yield r'volumeMode';
      yield serializers.serialize(
        object.volumeMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.vsphereVolume != null) {
      yield r'vsphereVolume';
      yield serializers.serialize(
        object.vsphereVolume,
        specifiedType: const FullType(IoK8sApiCoreV1VsphereVirtualDiskVolumeSource),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PersistentVolumeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PersistentVolumeSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessModes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.accessModes.replace(valueDes);
          break;
        case r'awsElasticBlockStore':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource),
          ) as IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource;
          result.awsElasticBlockStore.replace(valueDes);
          break;
        case r'azureDisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1AzureDiskVolumeSource),
          ) as IoK8sApiCoreV1AzureDiskVolumeSource;
          result.azureDisk.replace(valueDes);
          break;
        case r'azureFile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1AzureFilePersistentVolumeSource),
          ) as IoK8sApiCoreV1AzureFilePersistentVolumeSource;
          result.azureFile.replace(valueDes);
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.capacity.replace(valueDes);
          break;
        case r'cephfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1CephFSPersistentVolumeSource),
          ) as IoK8sApiCoreV1CephFSPersistentVolumeSource;
          result.cephfs.replace(valueDes);
          break;
        case r'cinder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1CinderPersistentVolumeSource),
          ) as IoK8sApiCoreV1CinderPersistentVolumeSource;
          result.cinder.replace(valueDes);
          break;
        case r'claimRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.claimRef.replace(valueDes);
          break;
        case r'csi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1CSIPersistentVolumeSource),
          ) as IoK8sApiCoreV1CSIPersistentVolumeSource;
          result.csi.replace(valueDes);
          break;
        case r'fc':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1FCVolumeSource),
          ) as IoK8sApiCoreV1FCVolumeSource;
          result.fc.replace(valueDes);
          break;
        case r'flexVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1FlexPersistentVolumeSource),
          ) as IoK8sApiCoreV1FlexPersistentVolumeSource;
          result.flexVolume.replace(valueDes);
          break;
        case r'flocker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1FlockerVolumeSource),
          ) as IoK8sApiCoreV1FlockerVolumeSource;
          result.flocker.replace(valueDes);
          break;
        case r'gcePersistentDisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1GCEPersistentDiskVolumeSource),
          ) as IoK8sApiCoreV1GCEPersistentDiskVolumeSource;
          result.gcePersistentDisk.replace(valueDes);
          break;
        case r'glusterfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1GlusterfsPersistentVolumeSource),
          ) as IoK8sApiCoreV1GlusterfsPersistentVolumeSource;
          result.glusterfs.replace(valueDes);
          break;
        case r'hostPath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1HostPathVolumeSource),
          ) as IoK8sApiCoreV1HostPathVolumeSource;
          result.hostPath.replace(valueDes);
          break;
        case r'iscsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ISCSIPersistentVolumeSource),
          ) as IoK8sApiCoreV1ISCSIPersistentVolumeSource;
          result.iscsi.replace(valueDes);
          break;
        case r'local':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1LocalVolumeSource),
          ) as IoK8sApiCoreV1LocalVolumeSource;
          result.local.replace(valueDes);
          break;
        case r'mountOptions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.mountOptions.replace(valueDes);
          break;
        case r'nfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NFSVolumeSource),
          ) as IoK8sApiCoreV1NFSVolumeSource;
          result.nfs.replace(valueDes);
          break;
        case r'nodeAffinity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1VolumeNodeAffinity),
          ) as IoK8sApiCoreV1VolumeNodeAffinity;
          result.nodeAffinity.replace(valueDes);
          break;
        case r'persistentVolumeReclaimPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.persistentVolumeReclaimPolicy = valueDes;
          break;
        case r'photonPersistentDisk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PhotonPersistentDiskVolumeSource),
          ) as IoK8sApiCoreV1PhotonPersistentDiskVolumeSource;
          result.photonPersistentDisk.replace(valueDes);
          break;
        case r'portworxVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PortworxVolumeSource),
          ) as IoK8sApiCoreV1PortworxVolumeSource;
          result.portworxVolume.replace(valueDes);
          break;
        case r'quobyte':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1QuobyteVolumeSource),
          ) as IoK8sApiCoreV1QuobyteVolumeSource;
          result.quobyte.replace(valueDes);
          break;
        case r'rbd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1RBDPersistentVolumeSource),
          ) as IoK8sApiCoreV1RBDPersistentVolumeSource;
          result.rbd.replace(valueDes);
          break;
        case r'scaleIO':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ScaleIOPersistentVolumeSource),
          ) as IoK8sApiCoreV1ScaleIOPersistentVolumeSource;
          result.scaleIO.replace(valueDes);
          break;
        case r'storageClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storageClassName = valueDes;
          break;
        case r'storageos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1StorageOSPersistentVolumeSource),
          ) as IoK8sApiCoreV1StorageOSPersistentVolumeSource;
          result.storageos.replace(valueDes);
          break;
        case r'volumeMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumeMode = valueDes;
          break;
        case r'vsphereVolume':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1VsphereVirtualDiskVolumeSource),
          ) as IoK8sApiCoreV1VsphereVirtualDiskVolumeSource;
          result.vsphereVolume.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PersistentVolumeSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PersistentVolumeSpecBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

