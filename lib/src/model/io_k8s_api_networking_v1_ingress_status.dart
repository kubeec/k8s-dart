//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_load_balancer_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_status.g.dart';

/// IngressStatus describe the current state of the Ingress.
///
/// Properties:
/// * [loadBalancer] 
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressStatus implements Built<IoK8sApiNetworkingV1IngressStatus, IoK8sApiNetworkingV1IngressStatusBuilder> {
  @BuiltValueField(wireName: r'loadBalancer')
  IoK8sApiNetworkingV1IngressLoadBalancerStatus? get loadBalancer;

  IoK8sApiNetworkingV1IngressStatus._();

  factory IoK8sApiNetworkingV1IngressStatus([void updates(IoK8sApiNetworkingV1IngressStatusBuilder b)]) = _$IoK8sApiNetworkingV1IngressStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressStatus> get serializer => _$IoK8sApiNetworkingV1IngressStatusSerializer();
}

class _$IoK8sApiNetworkingV1IngressStatusSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressStatus, _$IoK8sApiNetworkingV1IngressStatus];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.loadBalancer != null) {
      yield r'loadBalancer';
      yield serializers.serialize(
        object.loadBalancer,
        specifiedType: const FullType(IoK8sApiNetworkingV1IngressLoadBalancerStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'loadBalancer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNetworkingV1IngressLoadBalancerStatus),
          ) as IoK8sApiNetworkingV1IngressLoadBalancerStatus;
          result.loadBalancer.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IngressStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressStatusBuilder();
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

