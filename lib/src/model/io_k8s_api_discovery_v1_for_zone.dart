//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_discovery_v1_for_zone.g.dart';

/// ForZone provides information about which zones should consume this endpoint.
///
/// Properties:
/// * [name] - name represents the name of the zone.
@BuiltValue()
abstract class IoK8sApiDiscoveryV1ForZone implements Built<IoK8sApiDiscoveryV1ForZone, IoK8sApiDiscoveryV1ForZoneBuilder> {
  /// name represents the name of the zone.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiDiscoveryV1ForZone._();

  factory IoK8sApiDiscoveryV1ForZone([void updates(IoK8sApiDiscoveryV1ForZoneBuilder b)]) = _$IoK8sApiDiscoveryV1ForZone;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiDiscoveryV1ForZoneBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiDiscoveryV1ForZone> get serializer => _$IoK8sApiDiscoveryV1ForZoneSerializer();
}

class _$IoK8sApiDiscoveryV1ForZoneSerializer implements PrimitiveSerializer<IoK8sApiDiscoveryV1ForZone> {
  @override
  final Iterable<Type> types = const [IoK8sApiDiscoveryV1ForZone, _$IoK8sApiDiscoveryV1ForZone];

  @override
  final String wireName = r'IoK8sApiDiscoveryV1ForZone';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiDiscoveryV1ForZone object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiDiscoveryV1ForZone object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiDiscoveryV1ForZoneBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiDiscoveryV1ForZone deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiDiscoveryV1ForZoneBuilder();
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

