//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_endpoint_address.g.dart';

/// EndpointAddress is a tuple that describes single IP address.
///
/// Properties:
/// * [hostname] - The Hostname of this endpoint
/// * [ip] - The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.
/// * [nodeName] - Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
/// * [targetRef] 
@BuiltValue()
abstract class IoK8sApiCoreV1EndpointAddress implements Built<IoK8sApiCoreV1EndpointAddress, IoK8sApiCoreV1EndpointAddressBuilder> {
  /// The Hostname of this endpoint
  @BuiltValueField(wireName: r'hostname')
  String? get hostname;

  /// The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.
  @BuiltValueField(wireName: r'ip')
  String get ip;

  /// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  @BuiltValueField(wireName: r'nodeName')
  String? get nodeName;

  @BuiltValueField(wireName: r'targetRef')
  IoK8sApiCoreV1ObjectReference? get targetRef;

  IoK8sApiCoreV1EndpointAddress._();

  factory IoK8sApiCoreV1EndpointAddress([void updates(IoK8sApiCoreV1EndpointAddressBuilder b)]) = _$IoK8sApiCoreV1EndpointAddress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EndpointAddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EndpointAddress> get serializer => _$IoK8sApiCoreV1EndpointAddressSerializer();
}

class _$IoK8sApiCoreV1EndpointAddressSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EndpointAddress> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EndpointAddress, _$IoK8sApiCoreV1EndpointAddress];

  @override
  final String wireName = r'IoK8sApiCoreV1EndpointAddress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EndpointAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hostname != null) {
      yield r'hostname';
      yield serializers.serialize(
        object.hostname,
        specifiedType: const FullType(String),
      );
    }
    yield r'ip';
    yield serializers.serialize(
      object.ip,
      specifiedType: const FullType(String),
    );
    if (object.nodeName != null) {
      yield r'nodeName';
      yield serializers.serialize(
        object.nodeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.targetRef != null) {
      yield r'targetRef';
      yield serializers.serialize(
        object.targetRef,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EndpointAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EndpointAddressBuilder result,
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
        case r'nodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeName = valueDes;
          break;
        case r'targetRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.targetRef.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EndpointAddress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EndpointAddressBuilder();
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

