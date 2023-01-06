//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_downward_api_volume_file.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_downward_api_projection.g.dart';

/// Represents downward API info for projecting into a projected volume. Note that this is identical to a downwardAPI volume source without the default mode.
///
/// Properties:
/// * [items] - Items is a list of DownwardAPIVolume file
@BuiltValue()
abstract class IoK8sApiCoreV1DownwardAPIProjection implements Built<IoK8sApiCoreV1DownwardAPIProjection, IoK8sApiCoreV1DownwardAPIProjectionBuilder> {
  /// Items is a list of DownwardAPIVolume file
  @BuiltValueField(wireName: r'items')
  BuiltList<IoK8sApiCoreV1DownwardAPIVolumeFile>? get items;

  IoK8sApiCoreV1DownwardAPIProjection._();

  factory IoK8sApiCoreV1DownwardAPIProjection([void updates(IoK8sApiCoreV1DownwardAPIProjectionBuilder b)]) = _$IoK8sApiCoreV1DownwardAPIProjection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1DownwardAPIProjectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1DownwardAPIProjection> get serializer => _$IoK8sApiCoreV1DownwardAPIProjectionSerializer();
}

class _$IoK8sApiCoreV1DownwardAPIProjectionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1DownwardAPIProjection> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1DownwardAPIProjection, _$IoK8sApiCoreV1DownwardAPIProjection];

  @override
  final String wireName = r'IoK8sApiCoreV1DownwardAPIProjection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1DownwardAPIProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    IoK8sApiCoreV1DownwardAPIProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1DownwardAPIProjectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  IoK8sApiCoreV1DownwardAPIProjection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1DownwardAPIProjectionBuilder();
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

