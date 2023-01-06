//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_resource_attributes.g.dart';

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
///
/// Properties:
/// * [group] - Group is the API Group of the Resource.  \"*\" means all.
/// * [name] - Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all.
/// * [namespace] - Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
/// * [resource] - Resource is one of the existing resource types.  \"*\" means all.
/// * [subresource] - Subresource is one of the existing resource types.  \"\" means none.
/// * [verb] - Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
/// * [version] - Version is the API Version of the Resource.  \"*\" means all.
@BuiltValue()
abstract class IoK8sApiAuthorizationV1ResourceAttributes implements Built<IoK8sApiAuthorizationV1ResourceAttributes, IoK8sApiAuthorizationV1ResourceAttributesBuilder> {
  /// Group is the API Group of the Resource.  \"*\" means all.
  @BuiltValueField(wireName: r'group')
  String? get group;

  /// Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  /// Resource is one of the existing resource types.  \"*\" means all.
  @BuiltValueField(wireName: r'resource')
  String? get resource;

  /// Subresource is one of the existing resource types.  \"\" means none.
  @BuiltValueField(wireName: r'subresource')
  String? get subresource;

  /// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
  @BuiltValueField(wireName: r'verb')
  String? get verb;

  /// Version is the API Version of the Resource.  \"*\" means all.
  @BuiltValueField(wireName: r'version')
  String? get version;

  IoK8sApiAuthorizationV1ResourceAttributes._();

  factory IoK8sApiAuthorizationV1ResourceAttributes([void updates(IoK8sApiAuthorizationV1ResourceAttributesBuilder b)]) = _$IoK8sApiAuthorizationV1ResourceAttributes;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1ResourceAttributesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1ResourceAttributes> get serializer => _$IoK8sApiAuthorizationV1ResourceAttributesSerializer();
}

class _$IoK8sApiAuthorizationV1ResourceAttributesSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1ResourceAttributes> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1ResourceAttributes, _$IoK8sApiAuthorizationV1ResourceAttributes];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1ResourceAttributes';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1ResourceAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(String),
      );
    }
    if (object.resource != null) {
      yield r'resource';
      yield serializers.serialize(
        object.resource,
        specifiedType: const FullType(String),
      );
    }
    if (object.subresource != null) {
      yield r'subresource';
      yield serializers.serialize(
        object.subresource,
        specifiedType: const FullType(String),
      );
    }
    if (object.verb != null) {
      yield r'verb';
      yield serializers.serialize(
        object.verb,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1ResourceAttributes object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1ResourceAttributesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
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
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resource = valueDes;
          break;
        case r'subresource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subresource = valueDes;
          break;
        case r'verb':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verb = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1ResourceAttributes deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1ResourceAttributesBuilder();
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

