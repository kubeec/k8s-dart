//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_status.g.dart';

/// PriorityLevelConfigurationStatus represents the current state of a \"request-priority\".
///
/// Properties:
/// * [conditions] - `conditions` is the current state of \"request-priority\".
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus implements Built<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus, IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusBuilder> {
  /// `conditions` is the current state of \"request-priority\".
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition>? get conditions;

  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus._();

  factory IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus([void updates(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus> get serializer => _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus, _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition)]),
          ) as BuiltList<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationCondition>;
          result.conditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationStatusBuilder();
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

