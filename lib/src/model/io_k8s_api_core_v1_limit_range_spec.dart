//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_limit_range_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_limit_range_spec.g.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
///
/// Properties:
/// * [limits] - Limits is the list of LimitRangeItem objects that are enforced.
@BuiltValue()
abstract class IoK8sApiCoreV1LimitRangeSpec implements Built<IoK8sApiCoreV1LimitRangeSpec, IoK8sApiCoreV1LimitRangeSpecBuilder> {
  /// Limits is the list of LimitRangeItem objects that are enforced.
  @BuiltValueField(wireName: r'limits')
  BuiltList<IoK8sApiCoreV1LimitRangeItem> get limits;

  IoK8sApiCoreV1LimitRangeSpec._();

  factory IoK8sApiCoreV1LimitRangeSpec([void updates(IoK8sApiCoreV1LimitRangeSpecBuilder b)]) = _$IoK8sApiCoreV1LimitRangeSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LimitRangeSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LimitRangeSpec> get serializer => _$IoK8sApiCoreV1LimitRangeSpecSerializer();
}

class _$IoK8sApiCoreV1LimitRangeSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LimitRangeSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LimitRangeSpec, _$IoK8sApiCoreV1LimitRangeSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1LimitRangeSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LimitRangeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'limits';
    yield serializers.serialize(
      object.limits,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1LimitRangeItem)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LimitRangeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LimitRangeSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'limits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1LimitRangeItem)]),
          ) as BuiltList<IoK8sApiCoreV1LimitRangeItem>;
          result.limits.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1LimitRangeSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LimitRangeSpecBuilder();
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

