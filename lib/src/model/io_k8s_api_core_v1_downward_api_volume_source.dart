//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_volume_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_downward_api_volume_source.g.dart';

/// DownwardAPIVolumeSource represents a volume containing downward API info. Downward API volumes support ownership management and SELinux relabeling.
///
/// Properties:
/// * [defaultMode] - Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
/// * [items] - Items is a list of downward API volume file
@BuiltValue()
abstract class IoK8sApiCoreV1DownwardAPIVolumeSource implements Built<IoK8sApiCoreV1DownwardAPIVolumeSource, IoK8sApiCoreV1DownwardAPIVolumeSourceBuilder> {
  /// Optional: mode bits to use on created files by default. Must be a Optional: mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @BuiltValueField(wireName: r'defaultMode')
  int? get defaultMode;

  /// Items is a list of downward API volume file
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sApiCoreV1DownwardAPIVolumeFile>? get items;

  IoK8sApiCoreV1DownwardAPIVolumeSource._();

  factory IoK8sApiCoreV1DownwardAPIVolumeSource([void updates(IoK8sApiCoreV1DownwardAPIVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1DownwardAPIVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1DownwardAPIVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1DownwardAPIVolumeSource> get serializer => _$IoK8sApiCoreV1DownwardAPIVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1DownwardAPIVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1DownwardAPIVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1DownwardAPIVolumeSource, _$IoK8sApiCoreV1DownwardAPIVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1DownwardAPIVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1DownwardAPIVolumeSource object, {
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
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1DownwardAPIVolumeFile)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1DownwardAPIVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1DownwardAPIVolumeSourceBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1DownwardAPIVolumeFile)]),
          ) as BuiltList<IoK8sApiCoreV1DownwardAPIVolumeFile>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1DownwardAPIVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1DownwardAPIVolumeSourceBuilder();
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

