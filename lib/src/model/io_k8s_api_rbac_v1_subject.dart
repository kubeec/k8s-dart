//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_rbac_v1_subject.g.dart';

/// Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference, or a value for non-objects such as user and group names.
///
/// Properties:
/// * [apiGroup] - APIGroup holds the API group of the referenced subject. Defaults to \"\" for ServiceAccount subjects. Defaults to \"rbac.authorization.k8s.io\" for User and Group subjects.
/// * [kind] - Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
/// * [name] - Name of the object being referenced.
/// * [namespace] - Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error.
@BuiltValue()
abstract class IoK8sApiRbacV1Subject implements Built<IoK8sApiRbacV1Subject, IoK8sApiRbacV1SubjectBuilder> {
  /// APIGroup holds the API group of the referenced subject. Defaults to \"\" for ServiceAccount subjects. Defaults to \"rbac.authorization.k8s.io\" for User and Group subjects.
  @BuiltValueField(wireName: r'apiGroup')
  String? get apiGroup;

  /// Kind of object being referenced. Values defined by this API group are \"User\", \"Group\", and \"ServiceAccount\". If the Authorizer does not recognized the kind value, the Authorizer should report an error.
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name of the object being referenced.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Namespace of the referenced object.  If the object kind is non-namespace, such as \"User\" or \"Group\", and this value is not empty the Authorizer should report an error.
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  IoK8sApiRbacV1Subject._();

  factory IoK8sApiRbacV1Subject([void updates(IoK8sApiRbacV1SubjectBuilder b)]) = _$IoK8sApiRbacV1Subject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiRbacV1SubjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiRbacV1Subject> get serializer => _$IoK8sApiRbacV1SubjectSerializer();
}

class _$IoK8sApiRbacV1SubjectSerializer implements PrimitiveSerializer<IoK8sApiRbacV1Subject> {
  @override
  final Iterable<Type> types = const [IoK8sApiRbacV1Subject, _$IoK8sApiRbacV1Subject];

  @override
  final String wireName = r'IoK8sApiRbacV1Subject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiRbacV1Subject object, {
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
    IoK8sApiRbacV1Subject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiRbacV1SubjectBuilder result,
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
  IoK8sApiRbacV1Subject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiRbacV1SubjectBuilder();
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

