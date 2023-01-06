//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_port_status.g.dart';

/// IngressPortStatus represents the error condition of a service port
///
/// Properties:
/// * [error] - Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use   CamelCase names - cloud provider specific error values must have names that comply with the   format foo.example.com/CamelCase.
/// * [port] - Port is the port number of the ingress port.
/// * [protocol] - Protocol is the protocol of the ingress port. The supported values are: \"TCP\", \"UDP\", \"SCTP\"  
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressPortStatus implements Built<IoK8sApiNetworkingV1IngressPortStatus, IoK8sApiNetworkingV1IngressPortStatusBuilder> {
  /// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use   CamelCase names - cloud provider specific error values must have names that comply with the   format foo.example.com/CamelCase.
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// Port is the port number of the ingress port.
  @BuiltValueField(wireName: r'port')
  int get port;

  /// Protocol is the protocol of the ingress port. The supported values are: \"TCP\", \"UDP\", \"SCTP\"  
  @BuiltValueField(wireName: r'protocol')
  String get protocol;

  IoK8sApiNetworkingV1IngressPortStatus._();

  factory IoK8sApiNetworkingV1IngressPortStatus([void updates(IoK8sApiNetworkingV1IngressPortStatusBuilder b)]) = _$IoK8sApiNetworkingV1IngressPortStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressPortStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressPortStatus> get serializer => _$IoK8sApiNetworkingV1IngressPortStatusSerializer();
}

class _$IoK8sApiNetworkingV1IngressPortStatusSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressPortStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressPortStatus, _$IoK8sApiNetworkingV1IngressPortStatus];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressPortStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressPortStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
    yield r'protocol';
    yield serializers.serialize(
      object.protocol,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressPortStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressPortStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
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
  IoK8sApiNetworkingV1IngressPortStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressPortStatusBuilder();
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

