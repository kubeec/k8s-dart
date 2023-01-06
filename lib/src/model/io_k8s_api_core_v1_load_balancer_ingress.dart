//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_port_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_load_balancer_ingress.g.dart';

/// LoadBalancerIngress represents the status of a load-balancer ingress point: traffic intended for the service should be sent to an ingress point.
///
/// Properties:
/// * [hostname] - Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
/// * [ip] - IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
/// * [ports] - Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
@BuiltValue()
abstract class IoK8sApiCoreV1LoadBalancerIngress implements Built<IoK8sApiCoreV1LoadBalancerIngress, IoK8sApiCoreV1LoadBalancerIngressBuilder> {
  /// Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
  @BuiltValueField(wireName: r'hostname')
  String? get hostname;

  /// IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
  @BuiltValueField(wireName: r'ip')
  String? get ip;

  /// Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiCoreV1PortStatus>? get ports;

  IoK8sApiCoreV1LoadBalancerIngress._();

  factory IoK8sApiCoreV1LoadBalancerIngress([void updates(IoK8sApiCoreV1LoadBalancerIngressBuilder b)]) = _$IoK8sApiCoreV1LoadBalancerIngress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LoadBalancerIngressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LoadBalancerIngress> get serializer => _$IoK8sApiCoreV1LoadBalancerIngressSerializer();
}

class _$IoK8sApiCoreV1LoadBalancerIngressSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LoadBalancerIngress> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LoadBalancerIngress, _$IoK8sApiCoreV1LoadBalancerIngress];

  @override
  final String wireName = r'IoK8sApiCoreV1LoadBalancerIngress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LoadBalancerIngress object, {
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
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PortStatus)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LoadBalancerIngress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LoadBalancerIngressBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PortStatus)]),
          ) as BuiltList<IoK8sApiCoreV1PortStatus>;
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
  IoK8sApiCoreV1LoadBalancerIngress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LoadBalancerIngressBuilder();
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

