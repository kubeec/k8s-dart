//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_server_address_by_client_cidr.g.dart';

/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
///
/// Properties:
/// * [clientCIDR] - The CIDR with which clients can match their IP to figure out the server address that they should use.
/// * [serverAddress] - Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR implements Built<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR, IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRBuilder> {
  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  @BuiltValueField(wireName: r'clientCIDR')
  String get clientCIDR;

  /// Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
  @BuiltValueField(wireName: r'serverAddress')
  String get serverAddress;

  IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR._();

  factory IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR([void updates(IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR> get serializer => _$IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR, _$IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'clientCIDR';
    yield serializers.serialize(
      object.clientCIDR,
      specifiedType: const FullType(String),
    );
    yield r'serverAddress';
    yield serializers.serialize(
      object.serverAddress,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'clientCIDR':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.clientCIDR = valueDes;
          break;
        case r'serverAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serverAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRBuilder();
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

