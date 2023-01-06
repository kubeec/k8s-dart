//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_subject.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_resource_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_non_resource_policy_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta2_policy_rules_with_subjects.g.dart';

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
///
/// Properties:
/// * [nonResourceRules] - `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
/// * [resourceRules] - `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
/// * [subjects] - subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects implements Built<IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects, IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsBuilder> {
  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  @BuiltValueField(wireName: r'nonResourceRules')
  BuiltList<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule>? get nonResourceRules;

  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  @BuiltValueField(wireName: r'resourceRules')
  BuiltList<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule>? get resourceRules;

  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  @BuiltValueField(wireName: r'subjects')
  BuiltList<IoK8sApiFlowcontrolV1beta2Subject> get subjects;

  IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects._();

  factory IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects([void updates(IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsBuilder b)]) = _$IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects> get serializer => _$IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsSerializer();
}

class _$IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects, _$IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nonResourceRules != null) {
      yield r'nonResourceRules';
      yield serializers.serialize(
        object.nonResourceRules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule)]),
      );
    }
    if (object.resourceRules != null) {
      yield r'resourceRules';
      yield serializers.serialize(
        object.resourceRules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta2ResourcePolicyRule)]),
      );
    }
    yield r'subjects';
    yield serializers.serialize(
      object.subjects,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta2Subject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nonResourceRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule)]),
          ) as BuiltList<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule>;
          result.nonResourceRules.replace(valueDes);
          break;
        case r'resourceRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta2ResourcePolicyRule)]),
          ) as BuiltList<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule>;
          result.resourceRules.replace(valueDes);
          break;
        case r'subjects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiFlowcontrolV1beta2Subject)]),
          ) as BuiltList<IoK8sApiFlowcontrolV1beta2Subject>;
          result.subjects.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjects deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta2PolicyRulesWithSubjectsBuilder();
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

