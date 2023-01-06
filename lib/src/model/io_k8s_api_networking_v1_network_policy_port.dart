//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_network_policy_port.g.dart';

/// NetworkPolicyPort describes a port to allow traffic on
///
/// Properties:
/// * [endPort] - If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
/// * [port] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
/// * [protocol] - The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
@BuiltValue()
abstract class IoK8sApiNetworkingV1NetworkPolicyPort implements Built<IoK8sApiNetworkingV1NetworkPolicyPort, IoK8sApiNetworkingV1NetworkPolicyPortBuilder> {
  /// If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port.
  @BuiltValueField(wireName: r'endPort')
  int? get endPort;

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'port')
  String? get port;

  /// The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  @BuiltValueField(wireName: r'protocol')
  String? get protocol;

  IoK8sApiNetworkingV1NetworkPolicyPort._();

  factory IoK8sApiNetworkingV1NetworkPolicyPort([void updates(IoK8sApiNetworkingV1NetworkPolicyPortBuilder b)]) = _$IoK8sApiNetworkingV1NetworkPolicyPort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1NetworkPolicyPortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1NetworkPolicyPort> get serializer => _$IoK8sApiNetworkingV1NetworkPolicyPortSerializer();
}

class _$IoK8sApiNetworkingV1NetworkPolicyPortSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1NetworkPolicyPort> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1NetworkPolicyPort, _$IoK8sApiNetworkingV1NetworkPolicyPort];

  @override
  final String wireName = r'IoK8sApiNetworkingV1NetworkPolicyPort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1NetworkPolicyPort object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.endPort != null) {
      yield r'endPort';
      yield serializers.serialize(
        object.endPort,
        specifiedType: const FullType(int),
      );
    }
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(String),
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
    IoK8sApiNetworkingV1NetworkPolicyPort object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1NetworkPolicyPortBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.endPort = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  IoK8sApiNetworkingV1NetworkPolicyPort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1NetworkPolicyPortBuilder();
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

