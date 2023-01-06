//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_rbac_v1_subject.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_role_ref.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_rbac_v1_role_binding.g.dart';

/// RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [roleRef] 
/// * [subjects] - Subjects holds references to the objects the role applies to.
@BuiltValue()
abstract class IoK8sApiRbacV1RoleBinding implements Built<IoK8sApiRbacV1RoleBinding, IoK8sApiRbacV1RoleBindingBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'roleRef')
  IoK8sApiRbacV1RoleRef get roleRef;

  /// Subjects holds references to the objects the role applies to.
  @BuiltValueField(wireName: r'subjects')
  BuiltList<IoK8sApiRbacV1Subject>? get subjects;

  IoK8sApiRbacV1RoleBinding._();

  factory IoK8sApiRbacV1RoleBinding([void updates(IoK8sApiRbacV1RoleBindingBuilder b)]) = _$IoK8sApiRbacV1RoleBinding;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiRbacV1RoleBindingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiRbacV1RoleBinding> get serializer => _$IoK8sApiRbacV1RoleBindingSerializer();
}

class _$IoK8sApiRbacV1RoleBindingSerializer implements PrimitiveSerializer<IoK8sApiRbacV1RoleBinding> {
  @override
  final Iterable<Type> types = const [IoK8sApiRbacV1RoleBinding, _$IoK8sApiRbacV1RoleBinding];

  @override
  final String wireName = r'IoK8sApiRbacV1RoleBinding';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiRbacV1RoleBinding object, {
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
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    yield r'roleRef';
    yield serializers.serialize(
      object.roleRef,
      specifiedType: const FullType(IoK8sApiRbacV1RoleRef),
    );
    if (object.subjects != null) {
      yield r'subjects';
      yield serializers.serialize(
        object.subjects,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiRbacV1Subject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiRbacV1RoleBinding object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiRbacV1RoleBindingBuilder result,
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
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'roleRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiRbacV1RoleRef),
          ) as IoK8sApiRbacV1RoleRef;
          result.roleRef.replace(valueDes);
          break;
        case r'subjects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiRbacV1Subject)]),
          ) as BuiltList<IoK8sApiRbacV1Subject>;
          result.subjects.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiRbacV1RoleBinding deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiRbacV1RoleBindingBuilder();
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

