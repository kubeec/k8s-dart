//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_ip.g.dart';

/// IP address information for entries in the (plural) PodIPs field. Each entry includes:   IP: An IP address allocated to the pod. Routable at least within the cluster.
///
/// Properties:
/// * [ip] - ip is an IP address (IPv4 or IPv6) assigned to the pod
@BuiltValue()
abstract class IoK8sApiCoreV1PodIP implements Built<IoK8sApiCoreV1PodIP, IoK8sApiCoreV1PodIPBuilder> {
  /// ip is an IP address (IPv4 or IPv6) assigned to the pod
  @BuiltValueField(wireName: r'ip')
  String? get ip;

  IoK8sApiCoreV1PodIP._();

  factory IoK8sApiCoreV1PodIP([void updates(IoK8sApiCoreV1PodIPBuilder b)]) = _$IoK8sApiCoreV1PodIP;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodIPBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodIP> get serializer => _$IoK8sApiCoreV1PodIPSerializer();
}

class _$IoK8sApiCoreV1PodIPSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodIP> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodIP, _$IoK8sApiCoreV1PodIP];

  @override
  final String wireName = r'IoK8sApiCoreV1PodIP';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodIP object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ip != null) {
      yield r'ip';
      yield serializers.serialize(
        object.ip,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodIP object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodIPBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodIP deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodIPBuilder();
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

