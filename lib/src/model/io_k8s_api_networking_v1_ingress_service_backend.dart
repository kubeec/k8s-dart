//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_service_backend_port.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_service_backend.g.dart';

/// IngressServiceBackend references a Kubernetes Service as a Backend.
///
/// Properties:
/// * [name] - Name is the referenced service. The service must exist in the same namespace as the Ingress object.
/// * [port] 
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressServiceBackend implements Built<IoK8sApiNetworkingV1IngressServiceBackend, IoK8sApiNetworkingV1IngressServiceBackendBuilder> {
  /// Name is the referenced service. The service must exist in the same namespace as the Ingress object.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'port')
  IoK8sApiNetworkingV1ServiceBackendPort? get port;

  IoK8sApiNetworkingV1IngressServiceBackend._();

  factory IoK8sApiNetworkingV1IngressServiceBackend([void updates(IoK8sApiNetworkingV1IngressServiceBackendBuilder b)]) = _$IoK8sApiNetworkingV1IngressServiceBackend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressServiceBackendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressServiceBackend> get serializer => _$IoK8sApiNetworkingV1IngressServiceBackendSerializer();
}

class _$IoK8sApiNetworkingV1IngressServiceBackendSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressServiceBackend> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressServiceBackend, _$IoK8sApiNetworkingV1IngressServiceBackend];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressServiceBackend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressServiceBackend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(IoK8sApiNetworkingV1ServiceBackendPort),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressServiceBackend object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressServiceBackendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(IoK8sApiNetworkingV1ServiceBackendPort),
          ) as IoK8sApiNetworkingV1ServiceBackendPort;
          result.port.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IngressServiceBackend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressServiceBackendBuilder();
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

