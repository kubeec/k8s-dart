//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_limited_priority_level_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_spec.g.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
///
/// Properties:
/// * [limited] 
/// * [type] - `type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec implements Built<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec, IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecBuilder> {
  @BuiltValueField(wireName: r'limited')
  IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration? get limited;

  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec._();

  factory IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec([void updates(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec> get serializer => _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec, _$IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.limited != null) {
      yield r'limited';
      yield serializers.serialize(
        object.limited,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration),
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
    IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'limited':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration),
          ) as IoK8sApiFlowcontrolV1beta3LimitedPriorityLevelConfiguration;
          result.limited.replace(valueDes);
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
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationSpecBuilder();
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

