//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_claim_consumer_reference.g.dart';

/// ResourceClaimConsumerReference contains enough information to let you locate the consumer of a ResourceClaim. The user must be a resource in the same namespace as the ResourceClaim.
///
/// Properties:
/// * [apiGroup] - APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
/// * [name] - Name is the name of resource being referenced.
/// * [resource] - Resource is the type of resource being referenced, for example \"pods\".
/// * [uid] - UID identifies exactly one incarnation of the resource.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClaimConsumerReference implements Built<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference, IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceBuilder> {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  @BuiltValueField(wireName: r'apiGroup')
  String? get apiGroup;

  /// Name is the name of resource being referenced.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Resource is the type of resource being referenced, for example \"pods\".
  @BuiltValueField(wireName: r'resource')
  String get resource;

  /// UID identifies exactly one incarnation of the resource.
  @BuiltValueField(wireName: r'uid')
  String get uid;

  IoK8sApiResourceV1alpha1ResourceClaimConsumerReference._();

  factory IoK8sApiResourceV1alpha1ResourceClaimConsumerReference([void updates(IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClaimConsumerReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference> get serializer => _$IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClaimConsumerReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClaimConsumerReference, _$IoK8sApiResourceV1alpha1ResourceClaimConsumerReference];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClaimConsumerReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimConsumerReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiGroup != null) {
      yield r'apiGroup';
      yield serializers.serialize(
        object.apiGroup,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'resource';
    yield serializers.serialize(
      object.resource,
      specifiedType: const FullType(String),
    );
    yield r'uid';
    yield serializers.serialize(
      object.uid,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimConsumerReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resource = valueDes;
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1ResourceClaimConsumerReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClaimConsumerReferenceBuilder();
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

