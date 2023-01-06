//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_port.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_peer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_network_policy_egress_rule.g.dart';

/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to. This type is beta-level in 1.8
///
/// Properties:
/// * [ports] - List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
/// * [to] - List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
@BuiltValue()
abstract class IoK8sApiNetworkingV1NetworkPolicyEgressRule implements Built<IoK8sApiNetworkingV1NetworkPolicyEgressRule, IoK8sApiNetworkingV1NetworkPolicyEgressRuleBuilder> {
  /// List of destination ports for outgoing traffic. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiNetworkingV1NetworkPolicyPort>? get ports;

  /// List of destinations for outgoing traffic of pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all destinations (traffic not restricted by destination). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the to list.
  @BuiltValueField(wireName: r'to')
  BuiltList<IoK8sApiNetworkingV1NetworkPolicyPeer>? get to;

  IoK8sApiNetworkingV1NetworkPolicyEgressRule._();

  factory IoK8sApiNetworkingV1NetworkPolicyEgressRule([void updates(IoK8sApiNetworkingV1NetworkPolicyEgressRuleBuilder b)]) = _$IoK8sApiNetworkingV1NetworkPolicyEgressRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1NetworkPolicyEgressRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1NetworkPolicyEgressRule> get serializer => _$IoK8sApiNetworkingV1NetworkPolicyEgressRuleSerializer();
}

class _$IoK8sApiNetworkingV1NetworkPolicyEgressRuleSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1NetworkPolicyEgressRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1NetworkPolicyEgressRule, _$IoK8sApiNetworkingV1NetworkPolicyEgressRule];

  @override
  final String wireName = r'IoK8sApiNetworkingV1NetworkPolicyEgressRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyEgressRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ports != null) {
      yield r'ports';
      yield serializers.serialize(
        object.ports,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPort)]),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPeer)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyEgressRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1NetworkPolicyEgressRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPort)]),
          ) as BuiltList<IoK8sApiNetworkingV1NetworkPolicyPort>;
          result.ports.replace(valueDes);
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPeer)]),
          ) as BuiltList<IoK8sApiNetworkingV1NetworkPolicyPeer>;
          result.to.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1NetworkPolicyEgressRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1NetworkPolicyEgressRuleBuilder();
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

