//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_daemon_endpoint.g.dart';

/// DaemonEndpoint contains information about a single Daemon endpoint.
///
/// Properties:
/// * [port] - Port number of the given endpoint.
@BuiltValue()
abstract class IoK8sApiCoreV1DaemonEndpoint implements Built<IoK8sApiCoreV1DaemonEndpoint, IoK8sApiCoreV1DaemonEndpointBuilder> {
  /// Port number of the given endpoint.
  @BuiltValueField(wireName: r'Port')
  int get port;

  IoK8sApiCoreV1DaemonEndpoint._();

  factory IoK8sApiCoreV1DaemonEndpoint([void updates(IoK8sApiCoreV1DaemonEndpointBuilder b)]) = _$IoK8sApiCoreV1DaemonEndpoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1DaemonEndpointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1DaemonEndpoint> get serializer => _$IoK8sApiCoreV1DaemonEndpointSerializer();
}

class _$IoK8sApiCoreV1DaemonEndpointSerializer implements PrimitiveSerializer<IoK8sApiCoreV1DaemonEndpoint> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1DaemonEndpoint, _$IoK8sApiCoreV1DaemonEndpoint];

  @override
  final String wireName = r'IoK8sApiCoreV1DaemonEndpoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1DaemonEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'Port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1DaemonEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1DaemonEndpointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'Port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  IoK8sApiCoreV1DaemonEndpoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1DaemonEndpointBuilder();
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

