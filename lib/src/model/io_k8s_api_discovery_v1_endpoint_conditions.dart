//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_discovery_v1_endpoint_conditions.g.dart';

/// EndpointConditions represents the current condition of an endpoint.
///
/// Properties:
/// * [ready] - ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be \"true\" for terminating endpoints.
/// * [serving] - serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition.
/// * [terminating] - terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating.
@BuiltValue()
abstract class IoK8sApiDiscoveryV1EndpointConditions implements Built<IoK8sApiDiscoveryV1EndpointConditions, IoK8sApiDiscoveryV1EndpointConditionsBuilder> {
  /// ready indicates that this endpoint is prepared to receive traffic, according to whatever system is managing the endpoint. A nil value indicates an unknown state. In most cases consumers should interpret this unknown state as ready. For compatibility reasons, ready should never be \"true\" for terminating endpoints.
  @BuiltValueField(wireName: r'ready')
  bool? get ready;

  /// serving is identical to ready except that it is set regardless of the terminating state of endpoints. This condition should be set to true for a ready endpoint that is terminating. If nil, consumers should defer to the ready condition.
  @BuiltValueField(wireName: r'serving')
  bool? get serving;

  /// terminating indicates that this endpoint is terminating. A nil value indicates an unknown state. Consumers should interpret this unknown state to mean that the endpoint is not terminating.
  @BuiltValueField(wireName: r'terminating')
  bool? get terminating;

  IoK8sApiDiscoveryV1EndpointConditions._();

  factory IoK8sApiDiscoveryV1EndpointConditions([void updates(IoK8sApiDiscoveryV1EndpointConditionsBuilder b)]) = _$IoK8sApiDiscoveryV1EndpointConditions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiDiscoveryV1EndpointConditionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiDiscoveryV1EndpointConditions> get serializer => _$IoK8sApiDiscoveryV1EndpointConditionsSerializer();
}

class _$IoK8sApiDiscoveryV1EndpointConditionsSerializer implements PrimitiveSerializer<IoK8sApiDiscoveryV1EndpointConditions> {
  @override
  final Iterable<Type> types = const [IoK8sApiDiscoveryV1EndpointConditions, _$IoK8sApiDiscoveryV1EndpointConditions];

  @override
  final String wireName = r'IoK8sApiDiscoveryV1EndpointConditions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointConditions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ready != null) {
      yield r'ready';
      yield serializers.serialize(
        object.ready,
        specifiedType: const FullType(bool),
      );
    }
    if (object.serving != null) {
      yield r'serving';
      yield serializers.serialize(
        object.serving,
        specifiedType: const FullType(bool),
      );
    }
    if (object.terminating != null) {
      yield r'terminating';
      yield serializers.serialize(
        object.terminating,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointConditions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiDiscoveryV1EndpointConditionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ready':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ready = valueDes;
          break;
        case r'serving':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.serving = valueDes;
          break;
        case r'terminating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.terminating = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiDiscoveryV1EndpointConditions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiDiscoveryV1EndpointConditionsBuilder();
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

