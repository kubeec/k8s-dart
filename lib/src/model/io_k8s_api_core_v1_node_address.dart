//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_address.g.dart';

/// NodeAddress contains information for the node's address.
///
/// Properties:
/// * [address] - The node address.
/// * [type] - Node address type, one of Hostname, ExternalIP or InternalIP.
@BuiltValue()
abstract class IoK8sApiCoreV1NodeAddress implements Built<IoK8sApiCoreV1NodeAddress, IoK8sApiCoreV1NodeAddressBuilder> {
  /// The node address.
  @BuiltValueField(wireName: r'address')
  String get address;

  /// Node address type, one of Hostname, ExternalIP or InternalIP.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiCoreV1NodeAddress._();

  factory IoK8sApiCoreV1NodeAddress([void updates(IoK8sApiCoreV1NodeAddressBuilder b)]) = _$IoK8sApiCoreV1NodeAddress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeAddressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeAddress> get serializer => _$IoK8sApiCoreV1NodeAddressSerializer();
}

class _$IoK8sApiCoreV1NodeAddressSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeAddress> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeAddress, _$IoK8sApiCoreV1NodeAddress];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeAddress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'address';
    yield serializers.serialize(
      object.address,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeAddress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeAddressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.address = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeAddress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeAddressBuilder();
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

