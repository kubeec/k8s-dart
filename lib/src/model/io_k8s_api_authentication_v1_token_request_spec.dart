//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authentication_v1_bound_object_reference.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1_token_request_spec.g.dart';

/// TokenRequestSpec contains client provided parameters of a token request.
///
/// Properties:
/// * [audiences] - Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
/// * [boundObjectRef] 
/// * [expirationSeconds] - ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
@BuiltValue()
abstract class IoK8sApiAuthenticationV1TokenRequestSpec implements Built<IoK8sApiAuthenticationV1TokenRequestSpec, IoK8sApiAuthenticationV1TokenRequestSpecBuilder> {
  /// Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  @BuiltValueField(wireName: r'audiences')
  BuiltList<String> get audiences;

  @BuiltValueField(wireName: r'boundObjectRef')
  IoK8sApiAuthenticationV1BoundObjectReference? get boundObjectRef;

  /// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  @BuiltValueField(wireName: r'expirationSeconds')
  int? get expirationSeconds;

  IoK8sApiAuthenticationV1TokenRequestSpec._();

  factory IoK8sApiAuthenticationV1TokenRequestSpec([void updates(IoK8sApiAuthenticationV1TokenRequestSpecBuilder b)]) = _$IoK8sApiAuthenticationV1TokenRequestSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1TokenRequestSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1TokenRequestSpec> get serializer => _$IoK8sApiAuthenticationV1TokenRequestSpecSerializer();
}

class _$IoK8sApiAuthenticationV1TokenRequestSpecSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1TokenRequestSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1TokenRequestSpec, _$IoK8sApiAuthenticationV1TokenRequestSpec];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1TokenRequestSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenRequestSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'audiences';
    yield serializers.serialize(
      object.audiences,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.boundObjectRef != null) {
      yield r'boundObjectRef';
      yield serializers.serialize(
        object.boundObjectRef,
        specifiedType: const FullType(IoK8sApiAuthenticationV1BoundObjectReference),
      );
    }
    if (object.expirationSeconds != null) {
      yield r'expirationSeconds';
      yield serializers.serialize(
        object.expirationSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenRequestSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1TokenRequestSpecBuilder result,
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
        case r'boundObjectRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthenticationV1BoundObjectReference),
          ) as IoK8sApiAuthenticationV1BoundObjectReference;
          result.boundObjectRef.replace(valueDes);
          break;
        case r'expirationSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expirationSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthenticationV1TokenRequestSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1TokenRequestSpecBuilder();
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

