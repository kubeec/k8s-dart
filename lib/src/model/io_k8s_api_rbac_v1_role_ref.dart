//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_rbac_v1_role_ref.g.dart';

/// RoleRef contains information that points to the role being used
///
/// Properties:
/// * [apiGroup] - APIGroup is the group for the resource being referenced
/// * [kind] - Kind is the type of resource being referenced
/// * [name] - Name is the name of resource being referenced
@BuiltValue()
abstract class IoK8sApiRbacV1RoleRef implements Built<IoK8sApiRbacV1RoleRef, IoK8sApiRbacV1RoleRefBuilder> {
  /// APIGroup is the group for the resource being referenced
  @BuiltValueField(wireName: r'apiGroup')
  String get apiGroup;

  /// Kind is the type of resource being referenced
  @BuiltValueField(wireName: r'kind')
  String get kind;

  /// Name is the name of resource being referenced
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiRbacV1RoleRef._();

  factory IoK8sApiRbacV1RoleRef([void updates(IoK8sApiRbacV1RoleRefBuilder b)]) = _$IoK8sApiRbacV1RoleRef;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiRbacV1RoleRefBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiRbacV1RoleRef> get serializer => _$IoK8sApiRbacV1RoleRefSerializer();
}

class _$IoK8sApiRbacV1RoleRefSerializer implements PrimitiveSerializer<IoK8sApiRbacV1RoleRef> {
  @override
  final Iterable<Type> types = const [IoK8sApiRbacV1RoleRef, _$IoK8sApiRbacV1RoleRef];

  @override
  final String wireName = r'IoK8sApiRbacV1RoleRef';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiRbacV1RoleRef object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'apiGroup';
    yield serializers.serialize(
      object.apiGroup,
      specifiedType: const FullType(String),
    );
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
    IoK8sApiRbacV1RoleRef object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiRbacV1RoleRefBuilder result,
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
  IoK8sApiRbacV1RoleRef deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiRbacV1RoleRefBuilder();
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

