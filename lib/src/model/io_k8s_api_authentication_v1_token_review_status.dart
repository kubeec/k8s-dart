//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authentication_v1_user_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1_token_review_status.g.dart';

/// TokenReviewStatus is the result of the token authentication request.
///
/// Properties:
/// * [audiences] - Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server.
/// * [authenticated] - Authenticated indicates that the token was associated with a known user.
/// * [error] - Error indicates that the token couldn't be checked
/// * [user] 
@BuiltValue()
abstract class IoK8sApiAuthenticationV1TokenReviewStatus implements Built<IoK8sApiAuthenticationV1TokenReviewStatus, IoK8sApiAuthenticationV1TokenReviewStatusBuilder> {
  /// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is \"true\", the token is valid against the audience of the Kubernetes API server.
  @BuiltValueField(wireName: r'audiences')
  BuiltList<String>? get audiences;

  /// Authenticated indicates that the token was associated with a known user.
  @BuiltValueField(wireName: r'authenticated')
  bool? get authenticated;

  /// Error indicates that the token couldn't be checked
  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'user')
  IoK8sApiAuthenticationV1UserInfo? get user;

  IoK8sApiAuthenticationV1TokenReviewStatus._();

  factory IoK8sApiAuthenticationV1TokenReviewStatus([void updates(IoK8sApiAuthenticationV1TokenReviewStatusBuilder b)]) = _$IoK8sApiAuthenticationV1TokenReviewStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1TokenReviewStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1TokenReviewStatus> get serializer => _$IoK8sApiAuthenticationV1TokenReviewStatusSerializer();
}

class _$IoK8sApiAuthenticationV1TokenReviewStatusSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1TokenReviewStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1TokenReviewStatus, _$IoK8sApiAuthenticationV1TokenReviewStatus];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1TokenReviewStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.audiences != null) {
      yield r'audiences';
      yield serializers.serialize(
        object.audiences,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.authenticated != null) {
      yield r'authenticated';
      yield serializers.serialize(
        object.authenticated,
        specifiedType: const FullType(bool),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(IoK8sApiAuthenticationV1UserInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1TokenReviewStatusBuilder result,
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
        case r'authenticated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.authenticated = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthenticationV1UserInfo),
          ) as IoK8sApiAuthenticationV1UserInfo;
          result.user.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthenticationV1TokenReviewStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1TokenReviewStatusBuilder();
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

