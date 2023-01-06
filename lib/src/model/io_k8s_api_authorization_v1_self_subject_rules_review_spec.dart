//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_self_subject_rules_review_spec.g.dart';

/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
///
/// Properties:
/// * [namespace] - Namespace to evaluate rules for. Required.
@BuiltValue()
abstract class IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec implements Built<IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec, IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecBuilder> {
  /// Namespace to evaluate rules for. Required.
  @BuiltValueField(wireName: r'namespace')
  String? get namespace;

  IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec._();

  factory IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec([void updates(IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecBuilder b)]) = _$IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec> get serializer => _$IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecSerializer();
}

class _$IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec, _$IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.namespace != null) {
      yield r'namespace';
      yield serializers.serialize(
        object.namespace,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpecBuilder();
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

