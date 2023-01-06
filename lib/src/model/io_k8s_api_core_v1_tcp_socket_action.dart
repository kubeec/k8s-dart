//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_tcp_socket_action.g.dart';

/// TCPSocketAction describes an action based on opening a socket
///
/// Properties:
/// * [host] - Optional: Host name to connect to, defaults to the pod IP.
/// * [port] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
@BuiltValue()
abstract class IoK8sApiCoreV1TCPSocketAction implements Built<IoK8sApiCoreV1TCPSocketAction, IoK8sApiCoreV1TCPSocketActionBuilder> {
  /// Optional: Host name to connect to, defaults to the pod IP.
  @BuiltValueField(wireName: r'host')
  String? get host;

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'port')
  String get port;

  IoK8sApiCoreV1TCPSocketAction._();

  factory IoK8sApiCoreV1TCPSocketAction([void updates(IoK8sApiCoreV1TCPSocketActionBuilder b)]) = _$IoK8sApiCoreV1TCPSocketAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TCPSocketActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1TCPSocketAction> get serializer => _$IoK8sApiCoreV1TCPSocketActionSerializer();
}

class _$IoK8sApiCoreV1TCPSocketActionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1TCPSocketAction> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1TCPSocketAction, _$IoK8sApiCoreV1TCPSocketAction];

  @override
  final String wireName = r'IoK8sApiCoreV1TCPSocketAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1TCPSocketAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1TCPSocketAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TCPSocketActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.port = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1TCPSocketAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TCPSocketActionBuilder();
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

