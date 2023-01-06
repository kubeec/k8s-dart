//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_vsphere_virtual_disk_volume_source.g.dart';

/// Represents a vSphere volume resource.
///
/// Properties:
/// * [fsType] - fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
/// * [storagePolicyID] - storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
/// * [storagePolicyName] - storagePolicyName is the storage Policy Based Management (SPBM) profile name.
/// * [volumePath] - volumePath is the path that identifies vSphere volume vmdk
@BuiltValue()
abstract class IoK8sApiCoreV1VsphereVirtualDiskVolumeSource implements Built<IoK8sApiCoreV1VsphereVirtualDiskVolumeSource, IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceBuilder> {
  /// fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  @BuiltValueField(wireName: r'storagePolicyID')
  String? get storagePolicyID;

  /// storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  @BuiltValueField(wireName: r'storagePolicyName')
  String? get storagePolicyName;

  /// volumePath is the path that identifies vSphere volume vmdk
  @BuiltValueField(wireName: r'volumePath')
  String get volumePath;

  IoK8sApiCoreV1VsphereVirtualDiskVolumeSource._();

  factory IoK8sApiCoreV1VsphereVirtualDiskVolumeSource([void updates(IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1VsphereVirtualDiskVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1VsphereVirtualDiskVolumeSource> get serializer => _$IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1VsphereVirtualDiskVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1VsphereVirtualDiskVolumeSource, _$IoK8sApiCoreV1VsphereVirtualDiskVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1VsphereVirtualDiskVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1VsphereVirtualDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.storagePolicyID != null) {
      yield r'storagePolicyID';
      yield serializers.serialize(
        object.storagePolicyID,
        specifiedType: const FullType(String),
      );
    }
    if (object.storagePolicyName != null) {
      yield r'storagePolicyName';
      yield serializers.serialize(
        object.storagePolicyName,
        specifiedType: const FullType(String),
      );
    }
    yield r'volumePath';
    yield serializers.serialize(
      object.volumePath,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1VsphereVirtualDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fsType = valueDes;
          break;
        case r'storagePolicyID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storagePolicyID = valueDes;
          break;
        case r'storagePolicyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storagePolicyName = valueDes;
          break;
        case r'volumePath':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.volumePath = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1VsphereVirtualDiskVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1VsphereVirtualDiskVolumeSourceBuilder();
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

