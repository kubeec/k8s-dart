//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta2_non_resource_policy_rule.g.dart';

/// NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
///
/// Properties:
/// * [nonResourceURLs] - `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:   - \"/healthz\" is legal   - \"/hea*\" is illegal   - \"/hea\" is legal but matches nothing   - \"/hea/_*\" also matches nothing   - \"/healthz/_*\" matches all per-component health checks. \"*\" matches all non-resource urls. if it is present, it must be the only entry. Required.
/// * [verbs] - `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule implements Built<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule, IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleBuilder> {
  /// `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:   - \"/healthz\" is legal   - \"/hea*\" is illegal   - \"/hea\" is legal but matches nothing   - \"/hea/_*\" also matches nothing   - \"/healthz/_*\" matches all per-component health checks. \"*\" matches all non-resource urls. if it is present, it must be the only entry. Required.
  @BuiltValueField(wireName: r'nonResourceURLs')
  BuiltList<String> get nonResourceURLs;

  /// `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required.
  @BuiltValueField(wireName: r'verbs')
  BuiltList<String> get verbs;

  IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule._();

  factory IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule([void updates(IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleBuilder b)]) = _$IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule> get serializer => _$IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleSerializer();
}

class _$IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule, _$IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nonResourceURLs';
    yield serializers.serialize(
      object.nonResourceURLs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'verbs';
    yield serializers.serialize(
      object.verbs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nonResourceURLs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nonResourceURLs.replace(valueDes);
          break;
        case r'verbs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.verbs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta2NonResourcePolicyRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta2NonResourcePolicyRuleBuilder();
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

