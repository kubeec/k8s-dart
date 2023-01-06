//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1_token_request_status.g.dart';

/// TokenRequestStatus is the result of a token request.
///
/// Properties:
/// * [expirationTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [token] - Token is the opaque bearer token.
@BuiltValue()
abstract class IoK8sApiAuthenticationV1TokenRequestStatus implements Built<IoK8sApiAuthenticationV1TokenRequestStatus, IoK8sApiAuthenticationV1TokenRequestStatusBuilder> {
  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'expirationTimestamp')
  DateTime get expirationTimestamp;

  /// Token is the opaque bearer token.
  @BuiltValueField(wireName: r'token')
  String get token;

  IoK8sApiAuthenticationV1TokenRequestStatus._();

  factory IoK8sApiAuthenticationV1TokenRequestStatus([void updates(IoK8sApiAuthenticationV1TokenRequestStatusBuilder b)]) = _$IoK8sApiAuthenticationV1TokenRequestStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1TokenRequestStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1TokenRequestStatus> get serializer => _$IoK8sApiAuthenticationV1TokenRequestStatusSerializer();
}

class _$IoK8sApiAuthenticationV1TokenRequestStatusSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1TokenRequestStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1TokenRequestStatus, _$IoK8sApiAuthenticationV1TokenRequestStatus];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1TokenRequestStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expirationTimestamp';
    yield serializers.serialize(
      object.expirationTimestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1TokenRequestStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1TokenRequestStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expirationTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expirationTimestamp = valueDes;
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
  IoK8sApiAuthenticationV1TokenRequestStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1TokenRequestStatusBuilder();
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

