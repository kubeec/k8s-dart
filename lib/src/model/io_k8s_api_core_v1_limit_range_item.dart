//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_limit_range_item.g.dart';

/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
///
/// Properties:
/// * [default_] - Default resource requirement limit value by resource name if resource limit is omitted.
/// * [defaultRequest] - DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
/// * [max] - Max usage constraints on this kind by resource name.
/// * [maxLimitRequestRatio] - MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
/// * [min] - Min usage constraints on this kind by resource name.
/// * [type] - Type of resource that this limit applies to.
@BuiltValue()
abstract class IoK8sApiCoreV1LimitRangeItem implements Built<IoK8sApiCoreV1LimitRangeItem, IoK8sApiCoreV1LimitRangeItemBuilder> {
  /// Default resource requirement limit value by resource name if resource limit is omitted.
  @BuiltValueField(wireName: r'default')
  BuiltMap<String, String>? get default_;

  /// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  @BuiltValueField(wireName: r'defaultRequest')
  BuiltMap<String, String>? get defaultRequest;

  /// Max usage constraints on this kind by resource name.
  @BuiltValueField(wireName: r'max')
  BuiltMap<String, String>? get max;

  /// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  @BuiltValueField(wireName: r'maxLimitRequestRatio')
  BuiltMap<String, String>? get maxLimitRequestRatio;

  /// Min usage constraints on this kind by resource name.
  @BuiltValueField(wireName: r'min')
  BuiltMap<String, String>? get min;

  /// Type of resource that this limit applies to.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCoreV1LimitRangeItem._();

  factory IoK8sApiCoreV1LimitRangeItem([void updates(IoK8sApiCoreV1LimitRangeItemBuilder b)]) = _$IoK8sApiCoreV1LimitRangeItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LimitRangeItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LimitRangeItem> get serializer => _$IoK8sApiCoreV1LimitRangeItemSerializer();
}

class _$IoK8sApiCoreV1LimitRangeItemSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LimitRangeItem> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LimitRangeItem, _$IoK8sApiCoreV1LimitRangeItem];

  @override
  final String wireName = r'IoK8sApiCoreV1LimitRangeItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LimitRangeItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.default_ != null) {
      yield r'default';
      yield serializers.serialize(
        object.default_,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.defaultRequest != null) {
      yield r'defaultRequest';
      yield serializers.serialize(
        object.defaultRequest,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.max != null) {
      yield r'max';
      yield serializers.serialize(
        object.max,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.maxLimitRequestRatio != null) {
      yield r'maxLimitRequestRatio';
      yield serializers.serialize(
        object.maxLimitRequestRatio,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.min != null) {
      yield r'min';
      yield serializers.serialize(
        object.min,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LimitRangeItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LimitRangeItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'default':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.default_.replace(valueDes);
          break;
        case r'defaultRequest':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.defaultRequest.replace(valueDes);
          break;
        case r'max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.max.replace(valueDes);
          break;
        case r'maxLimitRequestRatio':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.maxLimitRequestRatio.replace(valueDes);
          break;
        case r'min':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.min.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1LimitRangeItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LimitRangeItemBuilder();
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

