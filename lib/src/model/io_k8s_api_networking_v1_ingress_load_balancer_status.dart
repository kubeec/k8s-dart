//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_load_balancer_ingress.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_load_balancer_status.g.dart';

/// IngressLoadBalancerStatus represents the status of a load-balancer.
///
/// Properties:
/// * [ingress] - Ingress is a list containing ingress points for the load-balancer.
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressLoadBalancerStatus implements Built<IoK8sApiNetworkingV1IngressLoadBalancerStatus, IoK8sApiNetworkingV1IngressLoadBalancerStatusBuilder> {
  /// Ingress is a list containing ingress points for the load-balancer.
  @BuiltValueField(wireName: r'ingress')
  BuiltList<IoK8sApiNetworkingV1IngressLoadBalancerIngress>? get ingress;

  IoK8sApiNetworkingV1IngressLoadBalancerStatus._();

  factory IoK8sApiNetworkingV1IngressLoadBalancerStatus([void updates(IoK8sApiNetworkingV1IngressLoadBalancerStatusBuilder b)]) = _$IoK8sApiNetworkingV1IngressLoadBalancerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressLoadBalancerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressLoadBalancerStatus> get serializer => _$IoK8sApiNetworkingV1IngressLoadBalancerStatusSerializer();
}

class _$IoK8sApiNetworkingV1IngressLoadBalancerStatusSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressLoadBalancerStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressLoadBalancerStatus, _$IoK8sApiNetworkingV1IngressLoadBalancerStatus];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressLoadBalancerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressLoadBalancerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ingress != null) {
      yield r'ingress';
      yield serializers.serialize(
        object.ingress,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressLoadBalancerIngress)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressLoadBalancerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressLoadBalancerStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ingress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiNetworkingV1IngressLoadBalancerIngress)]),
          ) as BuiltList<IoK8sApiNetworkingV1IngressLoadBalancerIngress>;
          result.ingress.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IngressLoadBalancerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressLoadBalancerStatusBuilder();
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

