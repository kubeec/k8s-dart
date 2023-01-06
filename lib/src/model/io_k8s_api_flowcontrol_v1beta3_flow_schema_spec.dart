//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_policy_rules_with_subjects.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_priority_level_configuration_reference.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta3_flow_distinguisher_method.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_flow_schema_spec.g.dart';

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
///
/// Properties:
/// * [distinguisherMethod] 
/// * [matchingPrecedence] - `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
/// * [priorityLevelConfiguration] 
/// * [rules] - `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3FlowSchemaSpec implements Built<IoK8sApiFlowcontrolV1beta3FlowSchemaSpec, IoK8sApiFlowcontrolV1beta3FlowSchemaSpecBuilder> {
  @BuiltValueField(wireName: r'distinguisherMethod')
  IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod? get distinguisherMethod;

  /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  @BuiltValueField(wireName: r'matchingPrecedence')
  int? get matchingPrecedence;

  @BuiltValueField(wireName: r'priorityLevelConfiguration')
  IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference get priorityLevelConfiguration;

  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  @BuiltValueField(wireName: r'rules')
  BuiltList<IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects>? get rules;

  IoK8sApiFlowcontrolV1beta3FlowSchemaSpec._();

  factory IoK8sApiFlowcontrolV1beta3FlowSchemaSpec([void updates(IoK8sApiFlowcontrolV1beta3FlowSchemaSpecBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3FlowSchemaSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3FlowSchemaSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3FlowSchemaSpec> get serializer => _$IoK8sApiFlowcontrolV1beta3FlowSchemaSpecSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3FlowSchemaSpecSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3FlowSchemaSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3FlowSchemaSpec, _$IoK8sApiFlowcontrolV1beta3FlowSchemaSpec];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3FlowSchemaSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3FlowSchemaSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.distinguisherMethod != null) {
      yield r'distinguisherMethod';
      yield serializers.serialize(
        object.distinguisherMethod,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod),
      );
    }
    if (object.matchingPrecedence != null) {
      yield r'matchingPrecedence';
      yield serializers.serialize(
        object.matchingPrecedence,
        specifiedType: const FullType(int),
      );
    }
    yield r'priorityLevelConfiguration';
    yield serializers.serialize(
      object.priorityLevelConfiguration,
      specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference),
    );
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3FlowSchemaSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3FlowSchemaSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'distinguisherMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod),
          ) as IoK8sApiFlowcontrolV1beta3FlowDistinguisherMethod;
          result.distinguisherMethod.replace(valueDes);
          break;
        case r'matchingPrecedence':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.matchingPrecedence = valueDes;
          break;
        case r'priorityLevelConfiguration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference),
          ) as IoK8sApiFlowcontrolV1beta3PriorityLevelConfigurationReference;
          result.priorityLevelConfiguration.replace(valueDes);
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects)]),
          ) as BuiltList<IoK8sApiFlowcontrolV1beta3PolicyRulesWithSubjects>;
          result.rules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta3FlowSchemaSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3FlowSchemaSpecBuilder();
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

