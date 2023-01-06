//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_egress_rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_network_policy_ingress_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_network_policy_spec.g.dart';

/// NetworkPolicySpec provides the specification of a NetworkPolicy
///
/// Properties:
/// * [egress] - List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
/// * [ingress] - List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
/// * [podSelector] 
/// * [policyTypes] - List of rule types that the NetworkPolicy relates to. Valid options are [\"Ingress\"], [\"Egress\"], or [\"Ingress\", \"Egress\"]. If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ \"Egress\" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include \"Egress\" (since such a policy would not include an Egress section and would otherwise default to just [ \"Ingress\" ]). This field is beta-level in 1.8
@BuiltValue()
abstract class IoK8sApiNetworkingV1NetworkPolicySpec implements Built<IoK8sApiNetworkingV1NetworkPolicySpec, IoK8sApiNetworkingV1NetworkPolicySpecBuilder> {
  /// List of egress rules to be applied to the selected pods. Outgoing traffic is allowed if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic matches at least one egress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy limits all outgoing traffic (and serves solely to ensure that the pods it selects are isolated by default). This field is beta-level in 1.8
  @BuiltValueField(wireName: r'egress')
  BuiltList<IoK8sApiNetworkingV1NetworkPolicyEgressRule>? get egress;

  /// List of ingress rules to be applied to the selected pods. Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod (and cluster policy otherwise allows the traffic), OR if the traffic source is the pod's local node, OR if the traffic matches at least one ingress rule across all of the NetworkPolicy objects whose podSelector matches the pod. If this field is empty then this NetworkPolicy does not allow any traffic (and serves solely to ensure that the pods it selects are isolated by default)
  @BuiltValueField(wireName: r'ingress')
  BuiltList<IoK8sApiNetworkingV1NetworkPolicyIngressRule>? get ingress;

  @BuiltValueField(wireName: r'podSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector get podSelector;

  /// List of rule types that the NetworkPolicy relates to. Valid options are [\"Ingress\"], [\"Egress\"], or [\"Ingress\", \"Egress\"]. If this field is not specified, it will default based on the existence of Ingress or Egress rules; policies that contain an Egress section are assumed to affect Egress, and all policies (whether or not they contain an Ingress section) are assumed to affect Ingress. If you want to write an egress-only policy, you must explicitly specify policyTypes [ \"Egress\" ]. Likewise, if you want to write a policy that specifies that no egress is allowed, you must specify a policyTypes value that include \"Egress\" (since such a policy would not include an Egress section and would otherwise default to just [ \"Ingress\" ]). This field is beta-level in 1.8
  @BuiltValueField(wireName: r'policyTypes')
  BuiltList<String>? get policyTypes;

  IoK8sApiNetworkingV1NetworkPolicySpec._();

  factory IoK8sApiNetworkingV1NetworkPolicySpec([void updates(IoK8sApiNetworkingV1NetworkPolicySpecBuilder b)]) = _$IoK8sApiNetworkingV1NetworkPolicySpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1NetworkPolicySpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1NetworkPolicySpec> get serializer => _$IoK8sApiNetworkingV1NetworkPolicySpecSerializer();
}

class _$IoK8sApiNetworkingV1NetworkPolicySpecSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1NetworkPolicySpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1NetworkPolicySpec, _$IoK8sApiNetworkingV1NetworkPolicySpec];

  @override
  final String wireName = r'IoK8sApiNetworkingV1NetworkPolicySpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicySpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.egress != null) {
      yield r'egress';
      yield serializers.serialize(
        object.egress,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyEgressRule)]),
      );
    }
    if (object.ingress != null) {
      yield r'ingress';
      yield serializers.serialize(
        object.ingress,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyIngressRule)]),
      );
    }
    yield r'podSelector';
    yield serializers.serialize(
      object.podSelector,
      specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
    );
    if (object.policyTypes != null) {
      yield r'policyTypes';
      yield serializers.serialize(
        object.policyTypes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicySpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1NetworkPolicySpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'egress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyEgressRule)]),
          ) as BuiltList<IoK8sApiNetworkingV1NetworkPolicyEgressRule>;
          result.egress.replace(valueDes);
          break;
        case r'ingress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1NetworkPolicyIngressRule)]),
          ) as BuiltList<IoK8sApiNetworkingV1NetworkPolicyIngressRule>;
          result.ingress.replace(valueDes);
          break;
        case r'podSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.podSelector.replace(valueDes);
          break;
        case r'policyTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.policyTypes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1NetworkPolicySpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1NetworkPolicySpecBuilder();
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

