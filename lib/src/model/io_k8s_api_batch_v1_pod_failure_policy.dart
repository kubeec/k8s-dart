//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_batch_v1_pod_failure_policy_rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_pod_failure_policy.g.dart';

/// PodFailurePolicy describes how failed pods influence the backoffLimit.
///
/// Properties:
/// * [rules] - A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
@BuiltValue()
abstract class IoK8sApiBatchV1PodFailurePolicy implements Built<IoK8sApiBatchV1PodFailurePolicy, IoK8sApiBatchV1PodFailurePolicyBuilder> {
  /// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  @BuiltValueField(wireName: r'rules')
  BuiltList<IoK8sApiBatchV1PodFailurePolicyRule> get rules;

  IoK8sApiBatchV1PodFailurePolicy._();

  factory IoK8sApiBatchV1PodFailurePolicy([void updates(IoK8sApiBatchV1PodFailurePolicyBuilder b)]) = _$IoK8sApiBatchV1PodFailurePolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1PodFailurePolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1PodFailurePolicy> get serializer => _$IoK8sApiBatchV1PodFailurePolicySerializer();
}

class _$IoK8sApiBatchV1PodFailurePolicySerializer implements PrimitiveSerializer<IoK8sApiBatchV1PodFailurePolicy> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1PodFailurePolicy, _$IoK8sApiBatchV1PodFailurePolicy];

  @override
  final String wireName = r'IoK8sApiBatchV1PodFailurePolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rules';
    yield serializers.serialize(
      object.rules,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiBatchV1PodFailurePolicyRule)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1PodFailurePolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiBatchV1PodFailurePolicyRule)]),
          ) as BuiltList<IoK8sApiBatchV1PodFailurePolicyRule>;
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
  IoK8sApiBatchV1PodFailurePolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1PodFailurePolicyBuilder();
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

