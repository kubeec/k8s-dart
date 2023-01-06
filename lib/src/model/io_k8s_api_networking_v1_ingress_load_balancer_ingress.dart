//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_port_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_load_balancer_ingress.g.dart';

/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
///
/// Properties:
/// * [hostname] - Hostname is set for load-balancer ingress points that are DNS based.
/// * [ip] - IP is set for load-balancer ingress points that are IP based.
/// * [ports] - Ports provides information about the ports exposed by this LoadBalancer.
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressLoadBalancerIngress implements Built<IoK8sApiNetworkingV1IngressLoadBalancerIngress, IoK8sApiNetworkingV1IngressLoadBalancerIngressBuilder> {
  /// Hostname is set for load-balancer ingress points that are DNS based.
  @BuiltValueField(wireName: r'hostname')
  String? get hostname;

  /// IP is set for load-balancer ingress points that are IP based.
  @BuiltValueField(wireName: r'ip')
  String? get ip;

  /// Ports provides information about the ports exposed by this LoadBalancer.
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiNetworkingV1IngressPortStatus>? get ports;

  IoK8sApiNetworkingV1IngressLoadBalancerIngress._();

  factory IoK8sApiNetworkingV1IngressLoadBalancerIngress([void updates(IoK8sApiNetworkingV1IngressLoadBalancerIngressBuilder b)]) = _$IoK8sApiNetworkingV1IngressLoadBalancerIngress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressLoadBalancerIngressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressLoadBalancerIngress> get serializer => _$IoK8sApiNetworkingV1IngressLoadBalancerIngressSerializer();
}

class _$IoK8sApiNetworkingV1IngressLoadBalancerIngressSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressLoadBalancerIngress> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressLoadBalancerIngress, _$IoK8sApiNetworkingV1IngressLoadBalancerIngress];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressLoadBalancerIngress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressLoadBalancerIngress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hostname != null) {
      yield r'hostname';
      yield serializers.serialize(
        object.hostname,
        specifiedType: const FullType(String),
      );
    }
    if (object.ip != null) {
      yield r'ip';
      yield serializers.serialize(
        object.ip,
        specifiedType: const FullType(String),
      );
    }
    if (object.ports != null) {
      yield r'ports';
      yield serializers.serialize(
        object.ports,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressPortStatus)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressLoadBalancerIngress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressLoadBalancerIngressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hostname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostname = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'ports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressPortStatus)]),
          ) as BuiltList<IoK8sApiNetworkingV1IngressPortStatus>;
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
  IoK8sApiNetworkingV1IngressLoadBalancerIngress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressLoadBalancerIngressBuilder();
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

