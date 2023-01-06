//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authentication_v1alpha1_self_subject_review_status.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authentication_v1alpha1_self_subject_review.g.dart';

/// SelfSubjectReview contains the user information that the kube-apiserver has about the user making this request. When using impersonation, users will receive the user info of the user being impersonated.
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [status] 
@BuiltValue()
abstract class IoK8sApiAuthenticationV1alpha1SelfSubjectReview implements Built<IoK8sApiAuthenticationV1alpha1SelfSubjectReview, IoK8sApiAuthenticationV1alpha1SelfSubjectReviewBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'status')
  IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus? get status;

  IoK8sApiAuthenticationV1alpha1SelfSubjectReview._();

  factory IoK8sApiAuthenticationV1alpha1SelfSubjectReview([void updates(IoK8sApiAuthenticationV1alpha1SelfSubjectReviewBuilder b)]) = _$IoK8sApiAuthenticationV1alpha1SelfSubjectReview;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthenticationV1alpha1SelfSubjectReviewBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthenticationV1alpha1SelfSubjectReview> get serializer => _$IoK8sApiAuthenticationV1alpha1SelfSubjectReviewSerializer();
}

class _$IoK8sApiAuthenticationV1alpha1SelfSubjectReviewSerializer implements PrimitiveSerializer<IoK8sApiAuthenticationV1alpha1SelfSubjectReview> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthenticationV1alpha1SelfSubjectReview, _$IoK8sApiAuthenticationV1alpha1SelfSubjectReview];

  @override
  final String wireName = r'IoK8sApiAuthenticationV1alpha1SelfSubjectReview';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthenticationV1alpha1SelfSubjectReview object, {
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
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthenticationV1alpha1SelfSubjectReview object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthenticationV1alpha1SelfSubjectReviewBuilder result,
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
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus),
          ) as IoK8sApiAuthenticationV1alpha1SelfSubjectReviewStatus;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthenticationV1alpha1SelfSubjectReview deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthenticationV1alpha1SelfSubjectReviewBuilder();
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

