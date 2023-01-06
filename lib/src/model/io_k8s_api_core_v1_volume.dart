//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_empty_dir_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_storage_os_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flocker_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_git_repo_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_csi_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_aws_elastic_block_store_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_iscsi_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ephemeral_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_projected_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_fc_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_scale_io_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_quobyte_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_cinder_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_vsphere_virtual_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_config_map_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ceph_fs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_nfs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_glusterfs_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_rbd_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_azure_file_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_portworx_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_host_path_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_gce_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_photon_persistent_disk_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_volume_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_flex_volume_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_volume.g.dart';

/// Volume represents a named volume in a pod that may be accessed by any container in the pod.
///
/// Properties:
/// * [awsElasticBlockStore] 
/// * [azureDisk] 
/// * [azureFile] 
/// * [cephfs] 
/// * [cinder] 
/// * [configMap] 
/// * [csi] 
/// * [downwardAPI] 
/// * [emptyDir] 
/// * [ephemeral] 
/// * [fc] 
/// * [flexVolume] 
/// * [flocker] 
/// * [gcePersistentDisk] 
/// * [gitRepo] 
/// * [glusterfs] 
/// * [hostPath] 
/// * [iscsi] 
/// * [name] - name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
/// * [nfs] 
/// * [persistentVolumeClaim] 
/// * [photonPersistentDisk] 
/// * [portworxVolume] 
/// * [projected] 
/// * [quobyte] 
/// * [rbd] 
/// * [scaleIO] 
/// * [secret] 
/// * [storageos] 
/// * [vsphereVolume] 
@BuiltValue()
abstract class IoK8sApiCoreV1Volume implements Built<IoK8sApiCoreV1Volume, IoK8sApiCoreV1VolumeBuilder> {
  @BuiltValueField(wireName: r'awsElasticBlockStore')
  IoK8sApiCoreV1AWSElasticBlockStoreVolumeSource? get awsElasticBlockStore;

  @BuiltValueField(wireName: r'azureDisk')
  IoK8sApiCoreV1AzureDiskVolumeSource? get azureDisk;

  @BuiltValueField(wireName: r'azureFile')
  IoK8sApiCoreV1AzureFileVolumeSource? get azureFile;

  @BuiltValueField(wireName: r'cephfs')
  IoK8sApiCoreV1CephFSVolumeSource? get cephfs;

  @BuiltValueField(wireName: r'cinder')
  IoK8sApiCoreV1CinderVolumeSource? get cinder;

  @BuiltValueField(wireName: r'configMap')
  IoK8sApiCoreV1ConfigMapVolumeSource? get configMap;

  @BuiltValueField(wireName: r'csi')
  IoK8sApiCoreV1CSIVolumeSource? get csi;

  @BuiltValueField(wireName: r'downwardAPI')
  IoK8sApiCoreV1DownwardAPIVolumeSource? get downwardAPI;

  @BuiltValueField(wireName: r'emptyDir')
  IoK8sApiCoreV1EmptyDirVolumeSource? get emptyDir;

  @BuiltValueField(wireName: r'ephemeral')
  IoK8sApiCoreV1EphemeralVolumeSource? get ephemeral;

  @BuiltValueField(wireName: r'fc')
  IoK8sApiCoreV1FCVolumeSource? get fc;

  @BuiltValueField(wireName: r'flexVolume')
  IoK8sApiCoreV1FlexVolumeSource? get flexVolume;

  @BuiltValueField(wireName: r'flocker')
  IoK8sApiCoreV1FlockerVolumeSource? get flocker;

  @BuiltValueField(wireName: r'gcePersistentDisk')
  IoK8sApiCoreV1GCEPersistentDiskVolumeSource? get gcePersistentDisk;

  @BuiltValueField(wireName: r'gitRepo')
  IoK8sApiCoreV1GitRepoVolumeSource? get gitRepo;

  @BuiltValueField(wireName: r'glusterfs')
  IoK8sApiCoreV1GlusterfsVolumeSource? get glusterfs;

  @BuiltValueField(wireName: r'hostPath')
  IoK8sApiCoreV1HostPathVolumeSource? get hostPath;

  @BuiltValueField(wireName: r'iscsi')
  IoK8sApiCoreV1ISCSIVolumeSource? get iscsi;

  /// name of the volume. Must be a DNS_LABEL and unique within the pod. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'nfs')
  IoK8sApiCoreV1NFSVolumeSource? get nfs;

  @BuiltValueField(wireName: r'persistentVolumeClaim')
  IoK8sApiCoreV1PersistentVolumeClaimVolumeSource? get persistentVolumeClaim;

  @BuiltValueField(wireName: r'photonPersistentDisk')
  IoK8sApiCoreV1PhotonPersistentDiskVolumeSource? get photonPersistentDisk;

  @BuiltValueField(wireName: r'portworxVolume')
  IoK8sApiCoreV1PortworxVolumeSource? get portworxVolume;

  @BuiltValueField(wireName: r'projected')
  IoK8sApiCoreV1ProjectedVolumeSource? get projected;

  @BuiltValueField(wireName: r'quobyte')
  IoK8sApiCoreV1QuobyteVolumeSource? get quobyte;

  @BuiltValueField(wireName: r'rbd')
  IoK8sApiCoreV1RBDVolumeSource? get rbd;

  @BuiltValueField(wireName: r'scaleIO')
  IoK8sApiCoreV1ScaleIOVolumeSource? get scaleIO;

  @BuiltValueField(wireName: r'secret')
  IoK8sApiCoreV1SecretVolumeSource? get secret;

  @BuiltValueField(wireName: r'storageos')
  IoK8sApiCoreV1StorageOSVolumeSource? get storageos;

  @BuiltValueField(wireName: r'vsphereVolume')
  IoK8sApiCoreV1VsphereVirtualDiskVolumeSource? get vsphereVolume;

  IoK8sApiCoreV1Volume._();

  factory IoK8sApiCoreV1Volume([void updates(IoK8sApiCoreV1VolumeBuilder b)]) = _$IoK8sApiCoreV1Volume;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1VolumeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Volume> get serializer => _$IoK8sApiCoreV1VolumeSerializer();
}

class _$IoK8sApiCoreV1VolumeSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Volume> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Volume, _$IoK8sApiCoreV1Volume];

  @override
  final String wireName = r'IoK8sApiCoreV1Volume';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Volume object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(IoK8sApiCoreV1AzureFileVolumeSource),
      );
    }
    if (object.cephfs != null) {
      yield r'cephfs';
      yield serializers.serialize(
        object.cephfs,
        specifiedType: const FullType(IoK8sApiCoreV1CephFSVolumeSource),
      );
    }
    if (object.cinder != null) {
      yield r'cinder';
      yield serializers.serialize(
        object.cinder,
        specifiedType: const FullType(IoK8sApiCoreV1CinderVolumeSource),
      );
    }
    if (object.configMap != null) {
      yield r'configMap';
      yield serializers.serialize(
        object.configMap,
        specifiedType: const FullType(IoK8sApiCoreV1ConfigMapVolumeSource),
      );
    }
    if (object.csi != null) {
      yield r'csi';
      yield serializers.serialize(
        object.csi,
        specifiedType: const FullType(IoK8sApiCoreV1CSIVolumeSource),
      );
    }
    if (object.downwardAPI != null) {
      yield r'downwardAPI';
      yield serializers.serialize(
        object.downwardAPI,
        specifiedType: const FullType(IoK8sApiCoreV1DownwardAPIVolumeSource),
      );
    }
    if (object.emptyDir != null) {
      yield r'emptyDir';
      yield serializers.serialize(
        object.emptyDir,
        specifiedType: const FullType(IoK8sApiCoreV1EmptyDirVolumeSource),
      );
    }
    if (object.ephemeral != null) {
      yield r'ephemeral';
      yield serializers.serialize(
        object.ephemeral,
        specifiedType: const FullType(IoK8sApiCoreV1EphemeralVolumeSource),
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
        specifiedType: const FullType(IoK8sApiCoreV1FlexVolumeSource),
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
    if (object.gitRepo != null) {
      yield r'gitRepo';
      yield serializers.serialize(
        object.gitRepo,
        specifiedType: const FullType(IoK8sApiCoreV1GitRepoVolumeSource),
      );
    }
    if (object.glusterfs != null) {
      yield r'glusterfs';
      yield serializers.serialize(
        object.glusterfs,
        specifiedType: const FullType(IoK8sApiCoreV1GlusterfsVolumeSource),
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
        specifiedType: const FullType(IoK8sApiCoreV1ISCSIVolumeSource),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.nfs != null) {
      yield r'nfs';
      yield serializers.serialize(
        object.nfs,
        specifiedType: const FullType(IoK8sApiCoreV1NFSVolumeSource),
      );
    }
    if (object.persistentVolumeClaim != null) {
      yield r'persistentVolumeClaim';
      yield serializers.serialize(
        object.persistentVolumeClaim,
        specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeClaimVolumeSource),
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
    if (object.projected != null) {
      yield r'projected';
      yield serializers.serialize(
        object.projected,
        specifiedType: const FullType(IoK8sApiCoreV1ProjectedVolumeSource),
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
        specifiedType: const FullType(IoK8sApiCoreV1RBDVolumeSource),
      );
    }
    if (object.scaleIO != null) {
      yield r'scaleIO';
      yield serializers.serialize(
        object.scaleIO,
        specifiedType: const FullType(IoK8sApiCoreV1ScaleIOVolumeSource),
      );
    }
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(IoK8sApiCoreV1SecretVolumeSource),
      );
    }
    if (object.storageos != null) {
      yield r'storageos';
      yield serializers.serialize(
        object.storageos,
        specifiedType: const FullType(IoK8sApiCoreV1StorageOSVolumeSource),
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
    IoK8sApiCoreV1Volume object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1VolumeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(IoK8sApiCoreV1AzureFileVolumeSource),
          ) as IoK8sApiCoreV1AzureFileVolumeSource;
          result.azureFile.replace(valueDes);
          break;
        case r'cephfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1CephFSVolumeSource),
          ) as IoK8sApiCoreV1CephFSVolumeSource;
          result.cephfs.replace(valueDes);
          break;
        case r'cinder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1CinderVolumeSource),
          ) as IoK8sApiCoreV1CinderVolumeSource;
          result.cinder.replace(valueDes);
          break;
        case r'configMap':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ConfigMapVolumeSource),
          ) as IoK8sApiCoreV1ConfigMapVolumeSource;
          result.configMap.replace(valueDes);
          break;
        case r'csi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1CSIVolumeSource),
          ) as IoK8sApiCoreV1CSIVolumeSource;
          result.csi.replace(valueDes);
          break;
        case r'downwardAPI':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1DownwardAPIVolumeSource),
          ) as IoK8sApiCoreV1DownwardAPIVolumeSource;
          result.downwardAPI.replace(valueDes);
          break;
        case r'emptyDir':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1EmptyDirVolumeSource),
          ) as IoK8sApiCoreV1EmptyDirVolumeSource;
          result.emptyDir.replace(valueDes);
          break;
        case r'ephemeral':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1EphemeralVolumeSource),
          ) as IoK8sApiCoreV1EphemeralVolumeSource;
          result.ephemeral.replace(valueDes);
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
            specifiedType: const FullType(IoK8sApiCoreV1FlexVolumeSource),
          ) as IoK8sApiCoreV1FlexVolumeSource;
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
        case r'gitRepo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1GitRepoVolumeSource),
          ) as IoK8sApiCoreV1GitRepoVolumeSource;
          result.gitRepo.replace(valueDes);
          break;
        case r'glusterfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1GlusterfsVolumeSource),
          ) as IoK8sApiCoreV1GlusterfsVolumeSource;
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
            specifiedType: const FullType(IoK8sApiCoreV1ISCSIVolumeSource),
          ) as IoK8sApiCoreV1ISCSIVolumeSource;
          result.iscsi.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'nfs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NFSVolumeSource),
          ) as IoK8sApiCoreV1NFSVolumeSource;
          result.nfs.replace(valueDes);
          break;
        case r'persistentVolumeClaim':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PersistentVolumeClaimVolumeSource),
          ) as IoK8sApiCoreV1PersistentVolumeClaimVolumeSource;
          result.persistentVolumeClaim.replace(valueDes);
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
        case r'projected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ProjectedVolumeSource),
          ) as IoK8sApiCoreV1ProjectedVolumeSource;
          result.projected.replace(valueDes);
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
            specifiedType: const FullType(IoK8sApiCoreV1RBDVolumeSource),
          ) as IoK8sApiCoreV1RBDVolumeSource;
          result.rbd.replace(valueDes);
          break;
        case r'scaleIO':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ScaleIOVolumeSource),
          ) as IoK8sApiCoreV1ScaleIOVolumeSource;
          result.scaleIO.replace(valueDes);
          break;
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretVolumeSource),
          ) as IoK8sApiCoreV1SecretVolumeSource;
          result.secret.replace(valueDes);
          break;
        case r'storageos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1StorageOSVolumeSource),
          ) as IoK8sApiCoreV1StorageOSVolumeSource;
          result.storageos.replace(valueDes);
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
  IoK8sApiCoreV1Volume deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1VolumeBuilder();
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

