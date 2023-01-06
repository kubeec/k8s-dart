//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_claim_parameters_reference.g.dart';

/// ResourceClaimParametersReference contains enough information to let you locate the parameters for a ResourceClaim. The object must be in the same namespace as the ResourceClaim.
///
/// Properties:
/// * [apiGroup] - APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
/// * [kind] - Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example \"ConfigMap\".
/// * [name] - Name is the name of resource being referenced.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClaimParametersReference implements Built<IoK8sApiResourceV1alpha1ResourceClaimParametersReference, IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceBuilder> {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  @BuiltValueField(wireName: r'apiGroup')
  String? get apiGroup;

  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata, for example \"ConfigMap\".
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name is the name of resource being referenced.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiResourceV1alpha1ResourceClaimParametersReference._();

  factory IoK8sApiResourceV1alpha1ResourceClaimParametersReference([void updates(IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClaimParametersReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClaimParametersReference> get serializer => _$IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClaimParametersReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClaimParametersReference, _$IoK8sApiResourceV1alpha1ResourceClaimParametersReference];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClaimParametersReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimParametersReference object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimParametersReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1ResourceClaimParametersReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClaimParametersReferenceBuilder();
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

