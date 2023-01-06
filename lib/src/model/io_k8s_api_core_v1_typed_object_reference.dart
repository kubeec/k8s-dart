//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_typed_object_reference.g.dart';

/// IoK8sApiCoreV1TypedObjectReference
///
/// Properties:
/// * [apiGroup] - APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
/// * [kind] - Kind is the type of resource being referenced
/// * [name] - Name is the name of resource being referenced
/// * [namespace] - Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
@BuiltValue()
abstract class IoK8sApiCoreV1TypedObjectReference implements Built<IoK8sApiCoreV1TypedObjectReference, IoK8sApiCoreV1TypedObjectReferenceBuilder> {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  @BuiltValueField(wireName: r'apiGroup')
  String? get apiGroup;

  /// Kind is the type of resource being referenced
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name is the name of resource being referenced
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Namespace is the namespace of resource being referenced Note that when a namespace is specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource feature gate to be enabled.
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  IoK8sApiCoreV1TypedObjectReference._();

  factory IoK8sApiCoreV1TypedObjectReference([void updates(IoK8sApiCoreV1TypedObjectReferenceBuilder b)]) = _$IoK8sApiCoreV1TypedObjectReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1TypedObjectReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1TypedObjectReference> get serializer => _$IoK8sApiCoreV1TypedObjectReferenceSerializer();
}

class _$IoK8sApiCoreV1TypedObjectReferenceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1TypedObjectReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1TypedObjectReference, _$IoK8sApiCoreV1TypedObjectReference];

  @override
  final String wireName = r'IoK8sApiCoreV1TypedObjectReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1TypedObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiGroup != null) {
      yield r'apiGroup';
      yield serializers.serialize(
        object.apiGroup,
        specifiedType: const FullType(String),
      );
    }
    yield r'kind';
    yield serializers.serialize(
      object.kind,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1TypedObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1TypedObjectReferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiGroup = valueDes;
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
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1TypedObjectReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1TypedObjectReferenceBuilder();
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

