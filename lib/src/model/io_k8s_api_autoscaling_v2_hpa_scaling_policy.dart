//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_hpa_scaling_policy.g.dart';

/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
///
/// Properties:
/// * [periodSeconds] - PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
/// * [type] - Type is used to specify the scaling policy.
/// * [value] - Value contains the amount of change which is permitted by the policy. It must be greater than zero
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HPAScalingPolicy implements Built<IoK8sApiAutoscalingV2HPAScalingPolicy, IoK8sApiAutoscalingV2HPAScalingPolicyBuilder> {
  /// PeriodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  @BuiltValueField(wireName: r'periodSeconds')
  int get periodSeconds;

  /// Type is used to specify the scaling policy.
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Value contains the amount of change which is permitted by the policy. It must be greater than zero
  @BuiltValueField(wireName: r'value')
  int get value;

  IoK8sApiAutoscalingV2HPAScalingPolicy._();

  factory IoK8sApiAutoscalingV2HPAScalingPolicy([void updates(IoK8sApiAutoscalingV2HPAScalingPolicyBuilder b)]) = _$IoK8sApiAutoscalingV2HPAScalingPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HPAScalingPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HPAScalingPolicy> get serializer => _$IoK8sApiAutoscalingV2HPAScalingPolicySerializer();
}

class _$IoK8sApiAutoscalingV2HPAScalingPolicySerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HPAScalingPolicy> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HPAScalingPolicy, _$IoK8sApiAutoscalingV2HPAScalingPolicy];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HPAScalingPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HPAScalingPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'periodSeconds';
    yield serializers.serialize(
      object.periodSeconds,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2HPAScalingPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HPAScalingPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'periodSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.periodSeconds = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  IoK8sApiAutoscalingV2HPAScalingPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HPAScalingPolicyBuilder();
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

