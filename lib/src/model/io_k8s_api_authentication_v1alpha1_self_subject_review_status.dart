//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authentication_v1_user_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1alpha1_self_subject_review_status.g.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
///
/// Properties:
/// * [userInfo] 
@BuiltValue()
abstract class IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus implements Built<IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus, IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusBuilder> {
  @BuiltValueField(wireName: r'userInfo')
  IoK8sApiAuthenticationV1UserInfo? get userInfo;

  IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus._();

  factory IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus([void updates(IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusBuilder b)]) = _$IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus> get serializer => _$IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusSerializer();
}

class _$IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus, _$IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userInfo != null) {
      yield r'userInfo';
      yield serializers.serialize(
        object.userInfo,
        specifiedType: const FullType(IoK8sApiAuthenticationV1UserInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthenticationV1UserInfo),
          ) as IoK8sApiAuthenticationV1UserInfo;
          result.userInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatusBuilder();
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

