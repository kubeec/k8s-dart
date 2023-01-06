//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_local_volume_source.g.dart';

/// Local represents directly-attached storage with node affinity (Beta feature)
///
/// Properties:
/// * [fsType] - fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a filesystem if unspecified.
/// * [path] - path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
@BuiltValue()
abstract class IoK8sApiCoreV1LocalVolumeSource implements Built<IoK8sApiCoreV1LocalVolumeSource, IoK8sApiCoreV1LocalVolumeSourceBuilder> {
  /// fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a filesystem if unspecified.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  @BuiltValueField(wireName: r'path')
  String get path;

  IoK8sApiCoreV1LocalVolumeSource._();

  factory IoK8sApiCoreV1LocalVolumeSource([void updates(IoK8sApiCoreV1LocalVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1LocalVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LocalVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LocalVolumeSource> get serializer => _$IoK8sApiCoreV1LocalVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1LocalVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LocalVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LocalVolumeSource, _$IoK8sApiCoreV1LocalVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1LocalVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LocalVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LocalVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LocalVolumeSourceBuilder result,
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
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1LocalVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LocalVolumeSourceBuilder();
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

