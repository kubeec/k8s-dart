//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_service_account_token_projection.g.dart';

/// ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
///
/// Properties:
/// * [audience] - audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
/// * [expirationSeconds] - expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
/// * [path] - path is the path relative to the mount point of the file to project the token into.
@BuiltValue()
abstract class IoK8sApiCoreV1ServiceAccountTokenProjection implements Built<IoK8sApiCoreV1ServiceAccountTokenProjection, IoK8sApiCoreV1ServiceAccountTokenProjectionBuilder> {
  /// audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
  @BuiltValueField(wireName: r'audience')
  String? get audience;

  /// expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
  @BuiltValueField(wireName: r'expirationSeconds')
  int? get expirationSeconds;

  /// path is the path relative to the mount point of the file to project the token into.
  @BuiltValueField(wireName: r'path')
  String get path;

  IoK8sApiCoreV1ServiceAccountTokenProjection._();

  factory IoK8sApiCoreV1ServiceAccountTokenProjection([void updates(IoK8sApiCoreV1ServiceAccountTokenProjectionBuilder b)]) = _$IoK8sApiCoreV1ServiceAccountTokenProjection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ServiceAccountTokenProjectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ServiceAccountTokenProjection> get serializer => _$IoK8sApiCoreV1ServiceAccountTokenProjectionSerializer();
}

class _$IoK8sApiCoreV1ServiceAccountTokenProjectionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ServiceAccountTokenProjection> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ServiceAccountTokenProjection, _$IoK8sApiCoreV1ServiceAccountTokenProjection];

  @override
  final String wireName = r'IoK8sApiCoreV1ServiceAccountTokenProjection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ServiceAccountTokenProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.audience != null) {
      yield r'audience';
      yield serializers.serialize(
        object.audience,
        specifiedType: const FullType(String),
      );
    }
    if (object.expirationSeconds != null) {
      yield r'expirationSeconds';
      yield serializers.serialize(
        object.expirationSeconds,
        specifiedType: const FullType(int),
      );
    }
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ServiceAccountTokenProjection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ServiceAccountTokenProjectionBuilder result,
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
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ServiceAccountTokenProjection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ServiceAccountTokenProjectionBuilder();
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

