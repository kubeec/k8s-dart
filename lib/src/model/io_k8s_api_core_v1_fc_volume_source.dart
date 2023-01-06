//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_fc_volume_source.g.dart';

/// Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
///
/// Properties:
/// * [fsType] - fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
/// * [lun] - lun is Optional: FC target lun number
/// * [readOnly] - readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
/// * [targetWWNs] - targetWWNs is Optional: FC target worldwide names (WWNs)
/// * [wwids] - wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
@BuiltValue()
abstract class IoK8sApiCoreV1FCVolumeSource implements Built<IoK8sApiCoreV1FCVolumeSource, IoK8sApiCoreV1FCVolumeSourceBuilder> {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// lun is Optional: FC target lun number
  @BuiltValueField(wireName: r'lun')
  int? get lun;

  /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// targetWWNs is Optional: FC target worldwide names (WWNs)
  @BuiltValueField(wireName: r'targetWWNs')
  BuiltList<String>? get targetWWNs;

  /// wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
  @BuiltValueField(wireName: r'wwids')
  BuiltList<String>? get wwids;

  IoK8sApiCoreV1FCVolumeSource._();

  factory IoK8sApiCoreV1FCVolumeSource([void updates(IoK8sApiCoreV1FCVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1FCVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1FCVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1FCVolumeSource> get serializer => _$IoK8sApiCoreV1FCVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1FCVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1FCVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1FCVolumeSource, _$IoK8sApiCoreV1FCVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1FCVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1FCVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.lun != null) {
      yield r'lun';
      yield serializers.serialize(
        object.lun,
        specifiedType: const FullType(int),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.targetWWNs != null) {
      yield r'targetWWNs';
      yield serializers.serialize(
        object.targetWWNs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.wwids != null) {
      yield r'wwids';
      yield serializers.serialize(
        object.wwids,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1FCVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1FCVolumeSourceBuilder result,
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
        case r'lun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lun = valueDes;
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'targetWWNs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.targetWWNs.replace(valueDes);
          break;
        case r'wwids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.wwids.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1FCVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1FCVolumeSourceBuilder();
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

