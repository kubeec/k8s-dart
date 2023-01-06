//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_condition.g.dart';

/// PriorityLevelConfigurationCondition defines the condition of priority level.
///
/// Properties:
/// * [lastTransitionTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - `message` is a human-readable message indicating details about last transition.
/// * [reason] - `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
/// * [status] - `status` is the status of the condition. Can be True, False, Unknown. Required.
/// * [type] - `type` is the type of the condition. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition implements Built<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition, IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTransitionTime')
  DateTime? get lastTransitionTime;

  /// `message` is a human-readable message indicating details about last transition.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// `status` is the status of the condition. Can be True, False, Unknown. Required.
  @BuiltValueField(wireName: r'status')
  String? get status;

  /// `type` is the type of the condition. Required.
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition._();

  factory IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition([void updates(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition> get serializer => _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition, _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition object, {
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionBuilder result,
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
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationConditionBuilder();
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

