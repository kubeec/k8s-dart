//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_photon_persistent_disk_volume_source.g.dart';

/// Represents a Photon Controller persistent disk resource.
///
/// Properties:
/// * [fsType] - fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
/// * [pdID] - pdID is the ID that identifies Photon Controller persistent disk
@BuiltValue()
abstract class IoK8sApiCoreV1PhotonPersistentDiskVolumeSource implements Built<IoK8sApiCoreV1PhotonPersistentDiskVolumeSource, IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceBuilder> {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// pdID is the ID that identifies Photon Controller persistent disk
  @BuiltValueField(wireName: r'pdID')
  String get pdID;

  IoK8sApiCoreV1PhotonPersistentDiskVolumeSource._();

  factory IoK8sApiCoreV1PhotonPersistentDiskVolumeSource([void updates(IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1PhotonPersistentDiskVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PhotonPersistentDiskVolumeSource> get serializer => _$IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PhotonPersistentDiskVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PhotonPersistentDiskVolumeSource, _$IoK8sApiCoreV1PhotonPersistentDiskVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1PhotonPersistentDiskVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PhotonPersistentDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    yield r'pdID';
    yield serializers.serialize(
      object.pdID,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PhotonPersistentDiskVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceBuilder result,
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
        case r'pdID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pdID = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PhotonPersistentDiskVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PhotonPersistentDiskVolumeSourceBuilder();
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

