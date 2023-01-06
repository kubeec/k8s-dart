//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_for_zone.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_discovery_v1_endpoint_hints.g.dart';

/// EndpointHints provides hints describing how an endpoint should be consumed.
///
/// Properties:
/// * [forZones] - forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
@BuiltValue()
abstract class IoK8sApiDiscoveryV1EndpointHints implements Built<IoK8sApiDiscoveryV1EndpointHints, IoK8sApiDiscoveryV1EndpointHintsBuilder> {
  /// forZones indicates the zone(s) this endpoint should be consumed by to enable topology aware routing.
  @BuiltValueField(wireName: r'forZones')
  BuiltList<IoK8sApiDiscoveryV1ForZone>? get forZones;

  IoK8sApiDiscoveryV1EndpointHints._();

  factory IoK8sApiDiscoveryV1EndpointHints([void updates(IoK8sApiDiscoveryV1EndpointHintsBuilder b)]) = _$IoK8sApiDiscoveryV1EndpointHints;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiDiscoveryV1EndpointHintsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiDiscoveryV1EndpointHints> get serializer => _$IoK8sApiDiscoveryV1EndpointHintsSerializer();
}

class _$IoK8sApiDiscoveryV1EndpointHintsSerializer implements PrimitiveSerializer<IoK8sApiDiscoveryV1EndpointHints> {
  @override
  final Iterable<Type> types = const [IoK8sApiDiscoveryV1EndpointHints, _$IoK8sApiDiscoveryV1EndpointHints];

  @override
  final String wireName = r'IoK8sApiDiscoveryV1EndpointHints';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointHints object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.forZones != null) {
      yield r'forZones';
      yield serializers.serialize(
        object.forZones,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiDiscoveryV1ForZone)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointHints object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiDiscoveryV1EndpointHintsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forZones':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiDiscoveryV1ForZone)]),
          ) as BuiltList<IoK8sApiDiscoveryV1ForZone>;
          result.forZones.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiDiscoveryV1EndpointHints deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiDiscoveryV1EndpointHintsBuilder();
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

