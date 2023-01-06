//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_match_resources.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_param_kind.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_validation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_spec.g.dart';

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
///
/// Properties:
/// * [failurePolicy] - FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
/// * [matchConstraints] 
/// * [paramKind] 
/// * [validations] - Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec implements Built<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecBuilder> {
  /// FailurePolicy defines how to handle failures for the admission policy. Failures can occur from invalid or mis-configured policy definitions or bindings. A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource. Allowed values are Ignore or Fail. Defaults to Fail.
  @BuiltValueField(wireName: r'failurePolicy')
  String? get failurePolicy;

  @BuiltValueField(wireName: r'matchConstraints')
  IoK8sApiAdmissionregistrationV1alpha1MatchResources? get matchConstraints;

  @BuiltValueField(wireName: r'paramKind')
  IoK8sApiAdmissionregistrationV1alpha1ParamKind? get paramKind;

  /// Validations contain CEL expressions which is used to apply the validation. A minimum of one validation is required for a policy definition. Required.
  @BuiltValueField(wireName: r'validations')
  BuiltList<IoK8sApiAdmissionregistrationV1alpha1Validation> get validations;

  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec._();

  factory IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec([void updates(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec, _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.failurePolicy != null) {
      yield r'failurePolicy';
      yield serializers.serialize(
        object.failurePolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.matchConstraints != null) {
      yield r'matchConstraints';
      yield serializers.serialize(
        object.matchConstraints,
        specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1MatchResources),
      );
    }
    if (object.paramKind != null) {
      yield r'paramKind';
      yield serializers.serialize(
        object.paramKind,
        specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1ParamKind),
      );
    }
    yield r'validations';
    yield serializers.serialize(
      object.validations,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1Validation)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'failurePolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.failurePolicy = valueDes;
          break;
        case r'matchConstraints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1MatchResources),
          ) as IoK8sApiAdmissionregistrationV1alpha1MatchResources;
          result.matchConstraints.replace(valueDes);
          break;
        case r'paramKind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1ParamKind),
          ) as IoK8sApiAdmissionregistrationV1alpha1ParamKind;
          result.paramKind.replace(valueDes);
          break;
        case r'validations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1Validation)]),
          ) as BuiltList<IoK8sApiAdmissionregistrationV1alpha1Validation>;
          result.validations.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicySpecBuilder();
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

