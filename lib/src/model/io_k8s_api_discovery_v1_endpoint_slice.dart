//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_port.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_discovery_v1_endpoint_slice.g.dart';

/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
///
/// Properties:
/// * [addressType] - addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.  
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [endpoints] - endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [ports] - ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates \"all ports\". Each slice may include a maximum of 100 ports.
@BuiltValue()
abstract class IoK8sApiDiscoveryV1EndpointSlice implements Built<IoK8sApiDiscoveryV1EndpointSlice, IoK8sApiDiscoveryV1EndpointSliceBuilder> {
  /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.  
  @BuiltValueField(wireName: r'addressType')
  String get addressType;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  @BuiltValueField(wireName: r'endpoints')
  BuiltList<IoK8sApiDiscoveryV1Endpoint> get endpoints;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates \"all ports\". Each slice may include a maximum of 100 ports.
  @BuiltValueField(wireName: r'ports')
  BuiltList<IoK8sApiDiscoveryV1EndpointPort>? get ports;

  IoK8sApiDiscoveryV1EndpointSlice._();

  factory IoK8sApiDiscoveryV1EndpointSlice([void updates(IoK8sApiDiscoveryV1EndpointSliceBuilder b)]) = _$IoK8sApiDiscoveryV1EndpointSlice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiDiscoveryV1EndpointSliceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiDiscoveryV1EndpointSlice> get serializer => _$IoK8sApiDiscoveryV1EndpointSliceSerializer();
}

class _$IoK8sApiDiscoveryV1EndpointSliceSerializer implements PrimitiveSerializer<IoK8sApiDiscoveryV1EndpointSlice> {
  @override
  final Iterable<Type> types = const [IoK8sApiDiscoveryV1EndpointSlice, _$IoK8sApiDiscoveryV1EndpointSlice];

  @override
  final String wireName = r'IoK8sApiDiscoveryV1EndpointSlice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointSlice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'addressType';
    yield serializers.serialize(
      object.addressType,
      specifiedType: const FullType(String),
    );
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'endpoints';
    yield serializers.serialize(
      object.endpoints,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiDiscoveryV1Endpoint)]),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.ports != null) {
      yield r'ports';
      yield serializers.serialize(
        object.ports,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiDiscoveryV1EndpointPort)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiDiscoveryV1EndpointSlice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiDiscoveryV1EndpointSliceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'addressType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressType = valueDes;
          break;
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'endpoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiDiscoveryV1Endpoint)]),
          ) as BuiltList<IoK8sApiDiscoveryV1Endpoint>;
          result.endpoints.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'ports':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiDiscoveryV1EndpointPort)]),
          ) as BuiltList<IoK8sApiDiscoveryV1EndpointPort>;
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
  IoK8sApiDiscoveryV1EndpointSlice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiDiscoveryV1EndpointSliceBuilder();
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

