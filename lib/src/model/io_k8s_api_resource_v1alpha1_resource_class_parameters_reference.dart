//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_class_parameters_reference.g.dart';

/// ResourceClassParametersReference contains enough information to let you locate the parameters for a ResourceClass.
///
/// Properties:
/// * [apiGroup] - APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
/// * [kind] - Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
/// * [name] - Name is the name of resource being referenced.
/// * [namespace] - Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClassParametersReference implements Built<IoK8sApiResourceV1alpha1ResourceClassParametersReference, IoK8sApiResourceV1alpha1ResourceClassParametersReferenceBuilder> {
  /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  @BuiltValueField(wireName: r'apiGroup')
  String? get apiGroup;

  /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name is the name of resource being referenced.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  IoK8sApiResourceV1alpha1ResourceClassParametersReference._();

  factory IoK8sApiResourceV1alpha1ResourceClassParametersReference([void updates(IoK8sApiResourceV1alpha1ResourceClassParametersReferenceBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClassParametersReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClassParametersReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClassParametersReference> get serializer => _$IoK8sApiResourceV1alpha1ResourceClassParametersReferenceSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClassParametersReferenceSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClassParametersReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClassParametersReference, _$IoK8sApiResourceV1alpha1ResourceClassParametersReference];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClassParametersReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClassParametersReference object, {
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
    IoK8sApiResourceV1alpha1ResourceClassParametersReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClassParametersReferenceBuilder result,
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
  IoK8sApiResourceV1alpha1ResourceClassParametersReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClassParametersReferenceBuilder();
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

