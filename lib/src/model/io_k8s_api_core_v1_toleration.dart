//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_toleration.g.dart';

/// The pod this Toleration is attached to tolerates any taint that matches the triple <key,value,effect> using the matching operator <operator>.
///
/// Properties:
/// * [effect] - Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.  
/// * [key] - Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
/// * [operator_] - Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.  
/// * [tolerationSeconds] - TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
/// * [value] - Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
@BuiltValue()
abstract class IoK8sApiCoreV1Toleration implements Built<IoK8sApiCoreV1Toleration, IoK8sApiCoreV1TolerationBuilder> {
  /// Effect indicates the taint effect to match. Empty means match all taint effects. When specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.  
  @BuiltValueField(wireName: r'effect')
  String? get effect;

  /// Key is the taint key that the toleration applies to. Empty means match all taint keys. If the key is empty, operator must be Exists; this combination means to match all values and all keys.
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// Operator represents a key's relationship to the value. Valid operators are Exists and Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can tolerate all taints of a particular category.  
  @BuiltValueField(wireName: r'operator')
  String? get operator_;

  /// TolerationSeconds represents the period of time the toleration (which must be of effect NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not set, which means tolerate the taint forever (do not evict). Zero and negative values will be treated as 0 (evict immediately) by the system.
  @BuiltValueField(wireName: r'tolerationSeconds')
  int? get tolerationSeconds;

  /// Value is the taint value the toleration matches to. If the operator is Exists, the value should be empty, otherwise just a regular string.
  @BuiltValueField(wireName: r'value')
  String? get value;

  IoK8sApiCoreV1Toleration._();

  factory IoK8sApiCoreV1Toleration([void updates(IoK8sApiCoreV1TolerationBuilder b)]) = _$IoK8sApiCoreV1Toleration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TolerationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Toleration> get serializer => _$IoK8sApiCoreV1TolerationSerializer();
}

class _$IoK8sApiCoreV1TolerationSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Toleration> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Toleration, _$IoK8sApiCoreV1Toleration];

  @override
  final String wireName = r'IoK8sApiCoreV1Toleration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Toleration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.effect != null) {
      yield r'effect';
      yield serializers.serialize(
        object.effect,
        specifiedType: const FullType(String),
      );
    }
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.operator_ != null) {
      yield r'operator';
      yield serializers.serialize(
        object.operator_,
        specifiedType: const FullType(String),
      );
    }
    if (object.tolerationSeconds != null) {
      yield r'tolerationSeconds';
      yield serializers.serialize(
        object.tolerationSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Toleration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TolerationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'effect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effect = valueDes;
          break;
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'tolerationSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.tolerationSeconds = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Toleration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TolerationBuilder();
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

