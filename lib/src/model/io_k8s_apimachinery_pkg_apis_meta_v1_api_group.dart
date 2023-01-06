//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_group_version_for_discovery.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_server_address_by_client_cidr.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_api_group.g.dart';

/// APIGroup contains the name, the supported versions, and the preferred version of a group.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [name] - name is the name of the group.
/// * [preferredVersion] 
/// * [serverAddressByClientCIDRs] - a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
/// * [versions] - versions are the versions supported in this group.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1APIGroup implements Built<IoK8sApimachineryPkgApisMetaV1APIGroup, IoK8sApimachineryPkgApisMetaV1APIGroupBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// name is the name of the group.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'preferredVersion')
  IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery? get preferredVersion;

  /// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  @BuiltValueField(wireName: r'serverAddressByClientCIDRs')
  BuiltList<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR>? get serverAddressByClientCIDRs;

  /// versions are the versions supported in this group.
  @BuiltValueField(wireName: r'versions')
  BuiltList<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery> get versions;

  IoK8sApimachineryPkgApisMetaV1APIGroup._();

  factory IoK8sApimachineryPkgApisMetaV1APIGroup([void updates(IoK8sApimachineryPkgApisMetaV1APIGroupBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1APIGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1APIGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1APIGroup> get serializer => _$IoK8sApimachineryPkgApisMetaV1APIGroupSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1APIGroupSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1APIGroup> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1APIGroup, _$IoK8sApimachineryPkgApisMetaV1APIGroup];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1APIGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1APIGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.preferredVersion != null) {
      yield r'preferredVersion';
      yield serializers.serialize(
        object.preferredVersion,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery),
      );
    }
    if (object.serverAddressByClientCIDRs != null) {
      yield r'serverAddressByClientCIDRs';
      yield serializers.serialize(
        object.serverAddressByClientCIDRs,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR)]),
      );
    }
    yield r'versions';
    yield serializers.serialize(
      object.versions,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1APIGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1APIGroupBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'preferredVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery),
          ) as IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery;
          result.preferredVersion.replace(valueDes);
          break;
        case r'serverAddressByClientCIDRs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR>;
          result.serverAddressByClientCIDRs.replace(valueDes);
          break;
        case r'versions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery>;
          result.versions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1APIGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1APIGroupBuilder();
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

