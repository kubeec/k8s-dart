//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_subject_access_review_status.g.dart';

/// SubjectAccessReviewStatus
///
/// Properties:
/// * [allowed] - Allowed is required. True if the action would be allowed, false otherwise.
/// * [denied] - Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
/// * [evaluationError] - EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
/// * [reason] - Reason is optional.  It indicates why a request was allowed or denied.
@BuiltValue()
abstract class IoK8sApiAuthorizationV1SubjectAccessReviewStatus implements Built<IoK8sApiAuthorizationV1SubjectAccessReviewStatus, IoK8sApiAuthorizationV1SubjectAccessReviewStatusBuilder> {
  /// Allowed is required. True if the action would be allowed, false otherwise.
  @BuiltValueField(wireName: r'allowed')
  bool get allowed;

  /// Denied is optional. True if the action would be denied, otherwise false. If both allowed is false and denied is false, then the authorizer has no opinion on whether to authorize the action. Denied may not be true if Allowed is true.
  @BuiltValueField(wireName: r'denied')
  bool? get denied;

  /// EvaluationError is an indication that some error occurred during the authorization check. It is entirely possible to get an error and be able to continue determine authorization status in spite of it. For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  @BuiltValueField(wireName: r'evaluationError')
  String? get evaluationError;

  /// Reason is optional.  It indicates why a request was allowed or denied.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  IoK8sApiAuthorizationV1SubjectAccessReviewStatus._();

  factory IoK8sApiAuthorizationV1SubjectAccessReviewStatus([void updates(IoK8sApiAuthorizationV1SubjectAccessReviewStatusBuilder b)]) = _$IoK8sApiAuthorizationV1SubjectAccessReviewStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1SubjectAccessReviewStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1SubjectAccessReviewStatus> get serializer => _$IoK8sApiAuthorizationV1SubjectAccessReviewStatusSerializer();
}

class _$IoK8sApiAuthorizationV1SubjectAccessReviewStatusSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1SubjectAccessReviewStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1SubjectAccessReviewStatus, _$IoK8sApiAuthorizationV1SubjectAccessReviewStatus];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1SubjectAccessReviewStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1SubjectAccessReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'allowed';
    yield serializers.serialize(
      object.allowed,
      specifiedType: const FullType(bool),
    );
    if (object.denied != null) {
      yield r'denied';
      yield serializers.serialize(
        object.denied,
        specifiedType: const FullType(bool),
      );
    }
    if (object.evaluationError != null) {
      yield r'evaluationError';
      yield serializers.serialize(
        object.evaluationError,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1SubjectAccessReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1SubjectAccessReviewStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.allowed = valueDes;
          break;
        case r'denied':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.denied = valueDes;
          break;
        case r'evaluationError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.evaluationError = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1SubjectAccessReviewStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1SubjectAccessReviewStatusBuilder();
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

