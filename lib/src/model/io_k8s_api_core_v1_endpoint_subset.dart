//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoint_port.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_endpoint_address.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_endpoint_subset.g.dart';

/// EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:   {    Addresses: [{\"ip\": \"10.10.1.1\"}, {\"ip\": \"10.10.2.2\"}],    Ports:     [{\"name\": \"a\", \"port\": 8675}, {\"name\": \"b\", \"port\": 309}]  }  The resulting set of endpoints can be viewed as:   a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],  b: [ 10.10.1.1:309, 10.10.2.2:309 ]
///
/// Properties:
/// * [addresses] - IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
/// * [notReadyAddresses] - IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
/// * [ports] - Port numbers available on the related IP addresses.
@BuiltValue()
abstract class IoK8sApiCoreV1EndpointSubset implements Built<IoK8sApiCoreV1EndpointSubset, IoK8sApiCoreV1EndpointSubsetBuilder> {
  /// IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
  @BuiltValueField(wireName: r'addresses')
  BuiltList<IoK8sApiCoreV1EndpointAddress>? get addresses;

  /// IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
  @BuiltValueField(wireName: r'notReadyAddresses')
  BuiltList<IoK8sApiCoreV1EndpointAddress>? get notReadyAddresses;

  /// Port numbers available on the related IP addresses.
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiCoreV1EndpointPort>? get ports;

  IoK8sApiCoreV1EndpointSubset._();

  factory IoK8sApiCoreV1EndpointSubset([void updates(IoK8sApiCoreV1EndpointSubsetBuilder b)]) = _$IoK8sApiCoreV1EndpointSubset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EndpointSubsetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1EndpointSubset> get serializer => _$IoK8sApiCoreV1EndpointSubsetSerializer();
}

class _$IoK8sApiCoreV1EndpointSubsetSerializer implements PrimitiveSerializer<IoK8sApiCoreV1EndpointSubset> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1EndpointSubset, _$IoK8sApiCoreV1EndpointSubset];

  @override
  final String wireName = r'IoK8sApiCoreV1EndpointSubset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1EndpointSubset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addresses != null) {
      yield r'addresses';
      yield serializers.serialize(
        object.addresses,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EndpointAddress)]),
      );
    }
    if (object.notReadyAddresses != null) {
      yield r'notReadyAddresses';
      yield serializers.serialize(
        object.notReadyAddresses,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EndpointAddress)]),
      );
    }
    if (object.ports != null) {
      yield r'ports';
      yield serializers.serialize(
        object.ports,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EndpointPort)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1EndpointSubset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EndpointSubsetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'addresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EndpointAddress)]),
          ) as BuiltList<IoK8sApiCoreV1EndpointAddress>;
          result.addresses.replace(valueDes);
          break;
        case r'notReadyAddresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EndpointAddress)]),
          ) as BuiltList<IoK8sApiCoreV1EndpointAddress>;
          result.notReadyAddresses.replace(valueDes);
          break;
        case r'ports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EndpointPort)]),
          ) as BuiltList<IoK8sApiCoreV1EndpointPort>;
          result.ports.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1EndpointSubset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EndpointSubsetBuilder();
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

