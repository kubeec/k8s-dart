//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_condition.g.dart';

/// HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a certain point.
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - message is a human-readable explanation containing details about the transition
/// * [reason] - reason is the reason for the condition's last transition.
/// * [status] - status is the status of the condition (True, False, Unknown)
/// * [type] - type describes the current condition
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition implements Built<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition, IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// message is a human-readable explanation containing details about the transition
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// reason is the reason for the condition's last transition.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// status is the status of the condition (True, False, Unknown)
  @BuiltValueField(wireName: r'status')
  String get status;

  /// type describes the current condition
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition._();

  factory IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition([void updates(IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionBuilder b)]) = _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition> get serializer => _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionSerializer();
}

class _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition, _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lastTransitionTime != null) {
      yield r'lastTransitionTime';
      yield serializers.serialize(
        object.lastTransitionTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
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
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lastTransitionTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastTransitionTime = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
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
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HorizontalPodAutoscalerConditionBuilder();
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

