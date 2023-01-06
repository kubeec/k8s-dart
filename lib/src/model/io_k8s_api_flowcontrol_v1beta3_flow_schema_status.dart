//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_schema_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_flow_schema_status.g.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
///
/// Properties:
/// * [conditions] - `conditions` is a list of the current states of FlowSchema.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3FlowSchemaStatus implements Built<IoK8sApiFlowcontrolV1beta3FlowSchemaStatus, IoK8sApiFlowcontrolV1beta3FlowSchemaStatusBuilder> {
  /// `conditions` is a list of the current states of FlowSchema.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiFlowcontrolV1beta3FlowSchemaCondition>? get conditions;

  IoK8sApiFlowcontrolV1beta3FlowSchemaStatus._();

  factory IoK8sApiFlowcontrolV1beta3FlowSchemaStatus([void updates(IoK8sApiFlowcontrolV1beta3FlowSchemaStatusBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3FlowSchemaStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3FlowSchemaStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3FlowSchemaStatus> get serializer => _$IoK8sApiFlowcontrolV1beta3FlowSchemaStatusSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3FlowSchemaStatusSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3FlowSchemaStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3FlowSchemaStatus, _$IoK8sApiFlowcontrolV1beta3FlowSchemaStatus];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3FlowSchemaStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3FlowSchemaStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta3FlowSchemaCondition)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3FlowSchemaStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3FlowSchemaStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta3FlowSchemaCondition)]),
          ) as BuiltList<IoK8sApiFlowcontrolV1beta3FlowSchemaCondition>;
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
  IoK8sApiFlowcontrolV1beta3FlowSchemaStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3FlowSchemaStatusBuilder();
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

