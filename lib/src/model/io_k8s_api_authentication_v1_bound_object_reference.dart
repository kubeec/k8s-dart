//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1_bound_object_reference.g.dart';

/// BoundObjectReference is a reference to an object that a token is bound to.
///
/// Properties:
/// * [apiVersion] - API version of the referent.
/// * [kind] - Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
/// * [name] - Name of the referent.
/// * [uid] - UID of the referent.
@BuiltValue()
abstract class IoK8sApiAuthenticationV1BoundObjectReference implements Built<IoK8sApiAuthenticationV1BoundObjectReference, IoK8sApiAuthenticationV1BoundObjectReferenceBuilder> {
  /// API version of the referent.
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// Name of the referent.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// UID of the referent.
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  IoK8sApiAuthenticationV1BoundObjectReference._();

  factory IoK8sApiAuthenticationV1BoundObjectReference([void updates(IoK8sApiAuthenticationV1BoundObjectReferenceBuilder b)]) = _$IoK8sApiAuthenticationV1BoundObjectReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1BoundObjectReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1BoundObjectReference> get serializer => _$IoK8sApiAuthenticationV1BoundObjectReferenceSerializer();
}

class _$IoK8sApiAuthenticationV1BoundObjectReferenceSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1BoundObjectReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1BoundObjectReference, _$IoK8sApiAuthenticationV1BoundObjectReference];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1BoundObjectReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1BoundObjectReference object, {
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
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1BoundObjectReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1BoundObjectReferenceBuilder result,
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
  IoK8sApiAuthenticationV1BoundObjectReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1BoundObjectReferenceBuilder();
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

