//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_authorization_v1_resource_rule.dart';
import 'package:k8s/src/model/io_k8s_api_authorization_v1_non_resource_rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_subject_rules_review_status.g.dart';

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on the set of authorizers the server is configured with and any errors experienced during evaluation. Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission, even if that list is incomplete.
///
/// Properties:
/// * [evaluationError] - EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
/// * [incomplete] - Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
/// * [nonResourceRules] - NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
/// * [resourceRules] - ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
@BuiltValue()
abstract class IoK8sApiAuthorizationV1SubjectRulesReviewStatus implements Built<IoK8sApiAuthorizationV1SubjectRulesReviewStatus, IoK8sApiAuthorizationV1SubjectRulesReviewStatusBuilder> {
  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  @BuiltValueField(wireName: r'evaluationError')
  String? get evaluationError;

  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  @BuiltValueField(wireName: r'incomplete')
  bool get incomplete;

  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @BuiltValueField(wireName: r'nonResourceRules')
  BuiltList<IoK8sApiAuthorizationV1NonResourceRule> get nonResourceRules;

  /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @BuiltValueField(wireName: r'resourceRules')
  BuiltList<IoK8sApiAuthorizationV1ResourceRule> get resourceRules;

  IoK8sApiAuthorizationV1SubjectRulesReviewStatus._();

  factory IoK8sApiAuthorizationV1SubjectRulesReviewStatus([void updates(IoK8sApiAuthorizationV1SubjectRulesReviewStatusBuilder b)]) = _$IoK8sApiAuthorizationV1SubjectRulesReviewStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1SubjectRulesReviewStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1SubjectRulesReviewStatus> get serializer => _$IoK8sApiAuthorizationV1SubjectRulesReviewStatusSerializer();
}

class _$IoK8sApiAuthorizationV1SubjectRulesReviewStatusSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1SubjectRulesReviewStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1SubjectRulesReviewStatus, _$IoK8sApiAuthorizationV1SubjectRulesReviewStatus];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1SubjectRulesReviewStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1SubjectRulesReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.evaluationError != null) {
      yield r'evaluationError';
      yield serializers.serialize(
        object.evaluationError,
        specifiedType: const FullType(String),
      );
    }
    yield r'incomplete';
    yield serializers.serialize(
      object.incomplete,
      specifiedType: const FullType(bool),
    );
    yield r'nonResourceRules';
    yield serializers.serialize(
      object.nonResourceRules,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAuthorizationV1NonResourceRule)]),
    );
    yield r'resourceRules';
    yield serializers.serialize(
      object.resourceRules,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAuthorizationV1ResourceRule)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAuthorizationV1SubjectRulesReviewStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1SubjectRulesReviewStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'evaluationError':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.evaluationError = valueDes;
          break;
        case r'incomplete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.incomplete = valueDes;
          break;
        case r'nonResourceRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAuthorizationV1NonResourceRule)]),
          ) as BuiltList<IoK8sApiAuthorizationV1NonResourceRule>;
          result.nonResourceRules.replace(valueDes);
          break;
        case r'resourceRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAuthorizationV1ResourceRule)]),
          ) as BuiltList<IoK8sApiAuthorizationV1ResourceRule>;
          result.resourceRules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAuthorizationV1SubjectRulesReviewStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1SubjectRulesReviewStatusBuilder();
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

