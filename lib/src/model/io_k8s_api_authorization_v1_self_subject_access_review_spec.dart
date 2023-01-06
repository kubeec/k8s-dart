//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authorization_v1_non_resource_attributes.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_resource_attributes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_self_subject_access_review_spec.g.dart';

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
///
/// Properties:
/// * [nonResourceAttributes] 
/// * [resourceAttributes] 
@BuiltValue()
abstract class IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec implements Built<IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec, IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecBuilder> {
  @BuiltValueField(wireName: r'nonResourceAttributes')
  IoK8sApiAuthorizationV1NonResourceAttributes? get nonResourceAttributes;

  @BuiltValueField(wireName: r'resourceAttributes')
  IoK8sApiAuthorizationV1ResourceAttributes? get resourceAttributes;

  IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec._();

  factory IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec([void updates(IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecBuilder b)]) = _$IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec> get serializer => _$IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecSerializer();
}

class _$IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec, _$IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nonResourceAttributes != null) {
      yield r'nonResourceAttributes';
      yield serializers.serialize(
        object.nonResourceAttributes,
        specifiedType: const FullType(IoK8sApiAuthorizationV1NonResourceAttributes),
      );
    }
    if (object.resourceAttributes != null) {
      yield r'resourceAttributes';
      yield serializers.serialize(
        object.resourceAttributes,
        specifiedType: const FullType(IoK8sApiAuthorizationV1ResourceAttributes),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nonResourceAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthorizationV1NonResourceAttributes),
          ) as IoK8sApiAuthorizationV1NonResourceAttributes;
          result.nonResourceAttributes.replace(valueDes);
          break;
        case r'resourceAttributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAuthorizationV1ResourceAttributes),
          ) as IoK8sApiAuthorizationV1ResourceAttributes;
          result.resourceAttributes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1SelfSubjectAccessReviewSpecBuilder();
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

