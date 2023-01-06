//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_typed_local_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_service_backend.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_ingress_backend.g.dart';

/// IngressBackend describes all endpoints for a given service and port.
///
/// Properties:
/// * [resource] 
/// * [service] 
@BuiltValue()
abstract class IoK8sApiNetworkingV1IngressBackend implements Built<IoK8sApiNetworkingV1IngressBackend, IoK8sApiNetworkingV1IngressBackendBuilder> {
  @BuiltValueField(wireName: r'resource')
  IoK8sApiCoreV1TypedLocalObjectReference? get resource;

  @BuiltValueField(wireName: r'service')
  IoK8sApiNetworkingV1IngressServiceBackend? get service;

  IoK8sApiNetworkingV1IngressBackend._();

  factory IoK8sApiNetworkingV1IngressBackend([void updates(IoK8sApiNetworkingV1IngressBackendBuilder b)]) = _$IoK8sApiNetworkingV1IngressBackend;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1IngressBackendBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1IngressBackend> get serializer => _$IoK8sApiNetworkingV1IngressBackendSerializer();
}

class _$IoK8sApiNetworkingV1IngressBackendSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1IngressBackend> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1IngressBackend, _$IoK8sApiNetworkingV1IngressBackend];

  @override
  final String wireName = r'IoK8sApiNetworkingV1IngressBackend';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressBackend object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resource != null) {
      yield r'resource';
      yield serializers.serialize(
        object.resource,
        specifiedType: const FullType(IoK8sApiCoreV1TypedLocalObjectReference),
      );
    }
    if (object.service != null) {
      yield r'service';
      yield serializers.serialize(
        object.service,
        specifiedType: const FullType(IoK8sApiNetworkingV1IngressServiceBackend),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1IngressBackend object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1IngressBackendBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1TypedLocalObjectReference),
          ) as IoK8sApiCoreV1TypedLocalObjectReference;
          result.resource.replace(valueDes);
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNetworkingV1IngressServiceBackend),
          ) as IoK8sApiNetworkingV1IngressServiceBackend;
          result.service.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1IngressBackend deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1IngressBackendBuilder();
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

