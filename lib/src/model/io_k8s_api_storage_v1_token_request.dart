//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_token_request.g.dart';

/// TokenRequest contains parameters of a service account token.
///
/// Properties:
/// * [audience] - Audience is the intended audience of the token in \"TokenRequestSpec\". It will default to the audiences of kube apiserver.
/// * [expirationSeconds] - ExpirationSeconds is the duration of validity of the token in \"TokenRequestSpec\". It has the same default value of \"ExpirationSeconds\" in \"TokenRequestSpec\".
@BuiltValue()
abstract class IoK8sApiStorageV1TokenRequest implements Built<IoK8sApiStorageV1TokenRequest, IoK8sApiStorageV1TokenRequestBuilder> {
  /// Audience is the intended audience of the token in \"TokenRequestSpec\". It will default to the audiences of kube apiserver.
  @BuiltValueField(wireName: r'audience')
  String get audience;

  /// ExpirationSeconds is the duration of validity of the token in \"TokenRequestSpec\". It has the same default value of \"ExpirationSeconds\" in \"TokenRequestSpec\".
  @BuiltValueField(wireName: r'expirationSeconds')
  int? get expirationSeconds;

  IoK8sApiStorageV1TokenRequest._();

  factory IoK8sApiStorageV1TokenRequest([void updates(IoK8sApiStorageV1TokenRequestBuilder b)]) = _$IoK8sApiStorageV1TokenRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1TokenRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1TokenRequest> get serializer => _$IoK8sApiStorageV1TokenRequestSerializer();
}

class _$IoK8sApiStorageV1TokenRequestSerializer implements PrimitiveSerializer<IoK8sApiStorageV1TokenRequest> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1TokenRequest, _$IoK8sApiStorageV1TokenRequest];

  @override
  final String wireName = r'IoK8sApiStorageV1TokenRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1TokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'audience';
    yield serializers.serialize(
      object.audience,
      specifiedType: const FullType(String),
    );
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
    IoK8sApiStorageV1TokenRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1TokenRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'audience':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.audience = valueDes;
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
  IoK8sApiStorageV1TokenRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1TokenRequestBuilder();
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

