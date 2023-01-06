//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1_token_review_spec.g.dart';

/// TokenReviewSpec is a description of the token authentication request.
///
/// Properties:
/// * [audiences] - Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
/// * [token] - Token is the opaque bearer token.
@BuiltValue()
abstract class IoK8sApiAuthenticationV1TokenReviewSpec implements Built<IoK8sApiAuthenticationV1TokenReviewSpec, IoK8sApiAuthenticationV1TokenReviewSpecBuilder> {
  /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  @BuiltValueField(wireName: r'audiences')
  BuiltList<String>? get audiences;

  /// Token is the opaque bearer token.
  @BuiltValueField(wireName: r'token')
  String? get token;

  IoK8sApiAuthenticationV1TokenReviewSpec._();

  factory IoK8sApiAuthenticationV1TokenReviewSpec([void updates(IoK8sApiAuthenticationV1TokenReviewSpecBuilder b)]) = _$IoK8sApiAuthenticationV1TokenReviewSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1TokenReviewSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1TokenReviewSpec> get serializer => _$IoK8sApiAuthenticationV1TokenReviewSpecSerializer();
}

class _$IoK8sApiAuthenticationV1TokenReviewSpecSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1TokenReviewSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1TokenReviewSpec, _$IoK8sApiAuthenticationV1TokenReviewSpec];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1TokenReviewSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.audiences != null) {
      yield r'audiences';
      yield serializers.serialize(
        object.audiences,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.token != null) {
      yield r'token';
      yield serializers.serialize(
        object.token,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1TokenReviewSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'audiences':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.audiences.replace(valueDes);
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthenticationV1TokenReviewSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1TokenReviewSpecBuilder();
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

