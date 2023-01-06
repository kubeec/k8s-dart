//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_load_balancer_ingress.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_load_balancer_status.g.dart';

/// LoadBalancerStatus represents the status of a load-balancer.
///
/// Properties:
/// * [ingress] - Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
@BuiltValue()
abstract class IoK8sApiCoreV1LoadBalancerStatus implements Built<IoK8sApiCoreV1LoadBalancerStatus, IoK8sApiCoreV1LoadBalancerStatusBuilder> {
  /// Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
  @BuiltValueField(wireName: r'ingress')
  BuiltList<IoK8sApiCoreV1LoadBalancerIngress>? get ingress;

  IoK8sApiCoreV1LoadBalancerStatus._();

  factory IoK8sApiCoreV1LoadBalancerStatus([void updates(IoK8sApiCoreV1LoadBalancerStatusBuilder b)]) = _$IoK8sApiCoreV1LoadBalancerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1LoadBalancerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1LoadBalancerStatus> get serializer => _$IoK8sApiCoreV1LoadBalancerStatusSerializer();
}

class _$IoK8sApiCoreV1LoadBalancerStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1LoadBalancerStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1LoadBalancerStatus, _$IoK8sApiCoreV1LoadBalancerStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1LoadBalancerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1LoadBalancerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ingress != null) {
      yield r'ingress';
      yield serializers.serialize(
        object.ingress,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1LoadBalancerIngress)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1LoadBalancerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1LoadBalancerStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ingress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1LoadBalancerIngress)]),
          ) as BuiltList<IoK8sApiCoreV1LoadBalancerIngress>;
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
  IoK8sApiCoreV1LoadBalancerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1LoadBalancerStatusBuilder();
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

