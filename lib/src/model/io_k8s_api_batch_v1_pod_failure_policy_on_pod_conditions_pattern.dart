//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_pod_failure_policy_on_pod_conditions_pattern.g.dart';

/// PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod condition type.
///
/// Properties:
/// * [status] - Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
/// * [type] - Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
@BuiltValue()
abstract class IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern implements Built<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern, IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternBuilder> {
  /// Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  @BuiltValueField(wireName: r'status')
  String get status;

  /// Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern._();

  factory IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern([void updates(IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternBuilder b)]) = _$IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern> get serializer => _$IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternSerializer();
}

class _$IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternSerializer implements PrimitiveSerializer<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern, _$IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern];

  @override
  final String wireName = r'IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
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
  IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPatternBuilder();
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

