//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_endpoint_port.g.dart';

/// EndpointPort is a tuple that describes a single port.
///
/// Properties:
/// * [appProtocol] - The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
/// * [name] - The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
/// * [port] - The port number of the endpoint.
/// * [protocol] - The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.  
@BuiltValue()
abstract class IoK8sApiCoreV1EndpointPort implements Built<IoK8sApiCoreV1EndpointPort, IoK8sApiCoreV1EndpointPortBuilder> {
  /// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
  @BuiltValueField(wireName: r'appProtocol')
  String? get appProtocol;

  /// The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The port number of the endpoint.
  @BuiltValueField(wireName: r'port')
  int get port;

  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.  
  @BuiltValueField(wireName: r'protocol')
  String? get protocol;

  IoK8sApiCoreV1EndpointPort._();

  factory IoK8sApiCoreV1EndpointPort([void updates(IoK8sApiCoreV1EndpointPortBuilder b)]) = _$IoK8sApiCoreV1EndpointPort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EndpointPortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EndpointPort> get serializer => _$IoK8sApiCoreV1EndpointPortSerializer();
}

class _$IoK8sApiCoreV1EndpointPortSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EndpointPort> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EndpointPort, _$IoK8sApiCoreV1EndpointPort];

  @override
  final String wireName = r'IoK8sApiCoreV1EndpointPort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EndpointPort object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.appProtocol != null) {
      yield r'appProtocol';
      yield serializers.serialize(
        object.appProtocol,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EndpointPort object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EndpointPortBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'appProtocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.appProtocol = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.protocol = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EndpointPort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EndpointPortBuilder();
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

