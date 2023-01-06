//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_port.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_peer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_network_policy_ingress_rule.g.dart';

/// NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
///
/// Properties:
/// * [from] - List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
/// * [ports] - List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
@BuiltValue()
abstract class IoK8sApiNetworkingV1NetworkPolicyIngressRule implements Built<IoK8sApiNetworkingV1NetworkPolicyIngressRule, IoK8sApiNetworkingV1NetworkPolicyIngressRuleBuilder> {
  /// List of sources which should be able to access the pods selected for this rule. Items in this list are combined using a logical OR operation. If this field is empty or missing, this rule matches all sources (traffic not restricted by source). If this field is present and contains at least one item, this rule allows traffic only if the traffic matches at least one item in the from list.
  @BuiltValueField(wireName: r'from')
  BuiltList<IoK8sApiNetworkingV1NetworkPolicyPeer>? get from;

  /// List of ports which should be made accessible on the pods selected for this rule. Each item in this list is combined using a logical OR. If this field is empty or missing, this rule matches all ports (traffic not restricted by port). If this field is present and contains at least one item, then this rule allows traffic only if the traffic matches at least one port in the list.
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiNetworkingV1NetworkPolicyPort>? get ports;

  IoK8sApiNetworkingV1NetworkPolicyIngressRule._();

  factory IoK8sApiNetworkingV1NetworkPolicyIngressRule([void updates(IoK8sApiNetworkingV1NetworkPolicyIngressRuleBuilder b)]) = _$IoK8sApiNetworkingV1NetworkPolicyIngressRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1NetworkPolicyIngressRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1NetworkPolicyIngressRule> get serializer => _$IoK8sApiNetworkingV1NetworkPolicyIngressRuleSerializer();
}

class _$IoK8sApiNetworkingV1NetworkPolicyIngressRuleSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1NetworkPolicyIngressRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1NetworkPolicyIngressRule, _$IoK8sApiNetworkingV1NetworkPolicyIngressRule];

  @override
  final String wireName = r'IoK8sApiNetworkingV1NetworkPolicyIngressRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyIngressRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPeer)]),
      );
    }
    if (object.ports != null) {
      yield r'ports';
      yield serializers.serialize(
        object.ports,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPort)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyIngressRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1NetworkPolicyIngressRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPeer)]),
          ) as BuiltList<IoK8sApiNetworkingV1NetworkPolicyPeer>;
          result.from.replace(valueDes);
          break;
        case r'ports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyPort)]),
          ) as BuiltList<IoK8sApiNetworkingV1NetworkPolicyPort>;
          result.ports.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1NetworkPolicyIngressRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1NetworkPolicyIngressRuleBuilder();
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

