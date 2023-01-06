//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_discovery_v1_endpoint_port.g.dart';

/// EndpointPort represents a Port used by an EndpointSlice
///
/// Properties:
/// * [appProtocol] - The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
/// * [name] - The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
/// * [port] - The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
/// * [protocol] - The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
@BuiltValue()
abstract class IoK8sApiDiscoveryV1EndpointPort implements Built<IoK8sApiDiscoveryV1EndpointPort, IoK8sApiDiscoveryV1EndpointPortBuilder> {
  /// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
  @BuiltValueField(wireName: r'appProtocol')
  String? get appProtocol;

  /// The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
  @BuiltValueField(wireName: r'port')
  int? get port;

  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  @BuiltValueField(wireName: r'protocol')
  String? get protocol;

  IoK8sApiDiscoveryV1EndpointPort._();

  factory IoK8sApiDiscoveryV1EndpointPort([void updates(IoK8sApiDiscoveryV1EndpointPortBuilder b)]) = _$IoK8sApiDiscoveryV1EndpointPort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiDiscoveryV1EndpointPortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiDiscoveryV1EndpointPort> get serializer => _$IoK8sApiDiscoveryV1EndpointPortSerializer();
}

class _$IoK8sApiDiscoveryV1EndpointPortSerializer implements PrimitiveSerializer<IoK8sApiDiscoveryV1EndpointPort> {
  @override
  final Iterable<Type> types = const [IoK8sApiDiscoveryV1EndpointPort, _$IoK8sApiDiscoveryV1EndpointPort];

  @override
  final String wireName = r'IoK8sApiDiscoveryV1EndpointPort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointPort object, {
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
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(int),
      );
    }
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
    IoK8sApiDiscoveryV1EndpointPort object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiDiscoveryV1EndpointPortBuilder result,
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
  IoK8sApiDiscoveryV1EndpointPort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiDiscoveryV1EndpointPortBuilder();
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

