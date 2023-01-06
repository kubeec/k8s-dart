//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_key_to_path.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_config_map_volume_source.g.dart';

/// Adapts a ConfigMap into a volume.  The contents of the target ConfigMap's Data field will be presented in a volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. ConfigMap volumes support ownership management and SELinux relabeling.
///
/// Properties:
/// * [defaultMode] - defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
/// * [items] - items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
/// * [name] - Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
/// * [optional] - optional specify whether the ConfigMap or its keys must be defined
@BuiltValue()
abstract class IoK8sApiCoreV1ConfigMapVolumeSource implements Built<IoK8sApiCoreV1ConfigMapVolumeSource, IoK8sApiCoreV1ConfigMapVolumeSourceBuilder> {
  /// defaultMode is optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @BuiltValueField(wireName: r'defaultMode')
  int? get defaultMode;

  /// items if unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sApiCoreV1KeyToPath>? get items;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// optional specify whether the ConfigMap or its keys must be defined
  @BuiltValueField(wireName: r'optional')
  bool? get optional;

  IoK8sApiCoreV1ConfigMapVolumeSource._();

  factory IoK8sApiCoreV1ConfigMapVolumeSource([void updates(IoK8sApiCoreV1ConfigMapVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1ConfigMapVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ConfigMapVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ConfigMapVolumeSource> get serializer => _$IoK8sApiCoreV1ConfigMapVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1ConfigMapVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ConfigMapVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ConfigMapVolumeSource, _$IoK8sApiCoreV1ConfigMapVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ConfigMapVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ConfigMapVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultMode != null) {
      yield r'defaultMode';
      yield serializers.serialize(
        object.defaultMode,
        specifiedType: const FullType(int),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1KeyToPath)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.optional != null) {
      yield r'optional';
      yield serializers.serialize(
        object.optional,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ConfigMapVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ConfigMapVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.defaultMode = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1KeyToPath)]),
          ) as BuiltList<IoK8sApiCoreV1KeyToPath>;
          result.items.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'optional':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.optional = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ConfigMapVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ConfigMapVolumeSourceBuilder();
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

