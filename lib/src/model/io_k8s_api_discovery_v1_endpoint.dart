//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_conditions.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_discovery_v1_endpoint_hints.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_discovery_v1_endpoint.g.dart';

/// Endpoint represents a single logical \"backend\" implementing a service.
///
/// Properties:
/// * [addresses] - addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: https://issue.k8s.io/106267
/// * [conditions] 
/// * [deprecatedTopology] - deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
/// * [hints] 
/// * [hostname] - hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
/// * [nodeName] - nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node.
/// * [targetRef] 
/// * [zone] - zone is the name of the Zone this endpoint exists in.
@BuiltValue()
abstract class IoK8sApiDiscoveryV1Endpoint implements Built<IoK8sApiDiscoveryV1Endpoint, IoK8sApiDiscoveryV1EndpointBuilder> {
  /// addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: https://issue.k8s.io/106267
  @BuiltValueField(wireName: r'addresses')
  BuiltList<String> get addresses;

  @BuiltValueField(wireName: r'conditions')
  IoK8sApiDiscoveryV1EndpointConditions? get conditions;

  /// deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
  @BuiltValueField(wireName: r'deprecatedTopology')
  BuiltMap<String, String>? get deprecatedTopology;

  @BuiltValueField(wireName: r'hints')
  IoK8sApiDiscoveryV1EndpointHints? get hints;

  /// hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
  @BuiltValueField(wireName: r'hostname')
  String? get hostname;

  /// nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node.
  @BuiltValueField(wireName: r'nodeName')
  String? get nodeName;

  @BuiltValueField(wireName: r'targetRef')
  IoK8sApiCoreV1ObjectReference? get targetRef;

  /// zone is the name of the Zone this endpoint exists in.
  @BuiltValueField(wireName: r'zone')
  String? get zone;

  IoK8sApiDiscoveryV1Endpoint._();

  factory IoK8sApiDiscoveryV1Endpoint([void updates(IoK8sApiDiscoveryV1EndpointBuilder b)]) = _$IoK8sApiDiscoveryV1Endpoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiDiscoveryV1EndpointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiDiscoveryV1Endpoint> get serializer => _$IoK8sApiDiscoveryV1EndpointSerializer();
}

class _$IoK8sApiDiscoveryV1EndpointSerializer implements PrimitiveSerializer<IoK8sApiDiscoveryV1Endpoint> {
  @override
  final Iterable<Type> types = const [IoK8sApiDiscoveryV1Endpoint, _$IoK8sApiDiscoveryV1Endpoint];

  @override
  final String wireName = r'IoK8sApiDiscoveryV1Endpoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiDiscoveryV1Endpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'addresses';
    yield serializers.serialize(
      object.addresses,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(IoK8sApiDiscoveryV1EndpointConditions),
      );
    }
    if (object.deprecatedTopology != null) {
      yield r'deprecatedTopology';
      yield serializers.serialize(
        object.deprecatedTopology,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.hints != null) {
      yield r'hints';
      yield serializers.serialize(
        object.hints,
        specifiedType: const FullType(IoK8sApiDiscoveryV1EndpointHints),
      );
    }
    if (object.hostname != null) {
      yield r'hostname';
      yield serializers.serialize(
        object.hostname,
        specifiedType: const FullType(String),
      );
    }
    if (object.nodeName != null) {
      yield r'nodeName';
      yield serializers.serialize(
        object.nodeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.targetRef != null) {
      yield r'targetRef';
      yield serializers.serialize(
        object.targetRef,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
    if (object.zone != null) {
      yield r'zone';
      yield serializers.serialize(
        object.zone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiDiscoveryV1Endpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiDiscoveryV1EndpointBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'addresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.addresses.replace(valueDes);
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiDiscoveryV1EndpointConditions),
          ) as IoK8sApiDiscoveryV1EndpointConditions;
          result.conditions.replace(valueDes);
          break;
        case r'deprecatedTopology':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.deprecatedTopology.replace(valueDes);
          break;
        case r'hints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiDiscoveryV1EndpointHints),
          ) as IoK8sApiDiscoveryV1EndpointHints;
          result.hints.replace(valueDes);
          break;
        case r'hostname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostname = valueDes;
          break;
        case r'nodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeName = valueDes;
          break;
        case r'targetRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.targetRef.replace(valueDes);
          break;
        case r'zone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.zone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiDiscoveryV1Endpoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiDiscoveryV1EndpointBuilder();
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

