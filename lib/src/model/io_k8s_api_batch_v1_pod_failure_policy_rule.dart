//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy_on_pod_conditions_pattern.dart';
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy_on_exit_codes_requirement.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_pod_failure_policy_rule.g.dart';

/// PodFailurePolicyRule describes how a pod failure is handled when the requirements are met. One of OnExitCodes and onPodConditions, but not both, can be used in each rule.
///
/// Properties:
/// * [action] - Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are: - FailJob: indicates that the pod's job is marked as Failed and all   running pods are terminated. - Ignore: indicates that the counter towards the .backoffLimit is not   incremented and a replacement pod is created. - Count: indicates that the pod is handled in the default way - the   counter towards the .backoffLimit is incremented. Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.  
/// * [onExitCodes] 
/// * [onPodConditions] - Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
@BuiltValue()
abstract class IoK8sApiBatchV1PodFailurePolicyRule implements Built<IoK8sApiBatchV1PodFailurePolicyRule, IoK8sApiBatchV1PodFailurePolicyRuleBuilder> {
  /// Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are: - FailJob: indicates that the pod's job is marked as Failed and all   running pods are terminated. - Ignore: indicates that the counter towards the .backoffLimit is not   incremented and a replacement pod is created. - Count: indicates that the pod is handled in the default way - the   counter towards the .backoffLimit is incremented. Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.  
  @BuiltValueField(wireName: r'action')
  String get action;

  @BuiltValueField(wireName: r'onExitCodes')
  IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement? get onExitCodes;

  /// Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  @BuiltValueField(wireName: r'onPodConditions')
  BuiltList<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern> get onPodConditions;

  IoK8sApiBatchV1PodFailurePolicyRule._();

  factory IoK8sApiBatchV1PodFailurePolicyRule([void updates(IoK8sApiBatchV1PodFailurePolicyRuleBuilder b)]) = _$IoK8sApiBatchV1PodFailurePolicyRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1PodFailurePolicyRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1PodFailurePolicyRule> get serializer => _$IoK8sApiBatchV1PodFailurePolicyRuleSerializer();
}

class _$IoK8sApiBatchV1PodFailurePolicyRuleSerializer implements PrimitiveSerializer<IoK8sApiBatchV1PodFailurePolicyRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1PodFailurePolicyRule, _$IoK8sApiBatchV1PodFailurePolicyRule];

  @override
  final String wireName = r'IoK8sApiBatchV1PodFailurePolicyRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'action';
    yield serializers.serialize(
      object.action,
      specifiedType: const FullType(String),
    );
    if (object.onExitCodes != null) {
      yield r'onExitCodes';
      yield serializers.serialize(
        object.onExitCodes,
        specifiedType: const FullType(IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement),
      );
    }
    yield r'onPodConditions';
    yield serializers.serialize(
      object.onPodConditions,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1PodFailurePolicyRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'onExitCodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement),
          ) as IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement;
          result.onExitCodes.replace(valueDes);
          break;
        case r'onPodConditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern)]),
          ) as BuiltList<IoK8sApiBatchV1PodFailurePolicyOnPodConditionsPattern>;
          result.onPodConditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1PodFailurePolicyRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1PodFailurePolicyRuleBuilder();
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

