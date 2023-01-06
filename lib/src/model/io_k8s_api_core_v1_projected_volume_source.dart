//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume_projection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_projected_volume_source.g.dart';

/// Represents a projected volume source
///
/// Properties:
/// * [defaultMode] - defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
/// * [sources] - sources is the list of volume projections
@BuiltValue()
abstract class IoK8sApiCoreV1ProjectedVolumeSource implements Built<IoK8sApiCoreV1ProjectedVolumeSource, IoK8sApiCoreV1ProjectedVolumeSourceBuilder> {
  /// defaultMode are the mode bits used to set permissions on created files by default. Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. Directories within the path are not affected by this setting. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  @BuiltValueField(wireName: r'defaultMode')
  int? get defaultMode;

  /// sources is the list of volume projections
  @BuiltValueField(wireName: r'sources')
  BuiltList<IoK8sApiCoreV1VolumeProjection>? get sources;

  IoK8sApiCoreV1ProjectedVolumeSource._();

  factory IoK8sApiCoreV1ProjectedVolumeSource([void updates(IoK8sApiCoreV1ProjectedVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1ProjectedVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ProjectedVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ProjectedVolumeSource> get serializer => _$IoK8sApiCoreV1ProjectedVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1ProjectedVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ProjectedVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ProjectedVolumeSource, _$IoK8sApiCoreV1ProjectedVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ProjectedVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ProjectedVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultMode != null) {
      yield r'defaultMode';
      yield serializers.serialize(
        object.defaultMode,
        specifiedType: const FullType(int),
      );
    }
    if (object.sources != null) {
      yield r'sources';
      yield serializers.serialize(
        object.sources,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1VolumeProjection)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ProjectedVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ProjectedVolumeSourceBuilder result,
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
        case r'sources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1VolumeProjection)]),
          ) as BuiltList<IoK8sApiCoreV1VolumeProjection>;
          result.sources.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ProjectedVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ProjectedVolumeSourceBuilder();
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

