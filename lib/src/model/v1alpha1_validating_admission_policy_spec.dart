//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_audit_annotation.dart';
import 'package:k8s/src/model/v1alpha1_validation.dart';
import 'package:k8s/src/model/v1alpha1_param_kind.dart';
import 'package:k8s/src/model/v1alpha1_match_resources.dart';
import 'package:k8s/src/model/v1alpha1_match_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_validating_admission_policy_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ValidatingAdmissionPolicySpec {
  /// Returns a new [V1alpha1ValidatingAdmissionPolicySpec] instance.
  V1alpha1ValidatingAdmissionPolicySpec({

     this.auditAnnotations,

     this.failurePolicy,

     this.matchConditions,

     this.matchConstraints,

     this.paramKind,

     this.validations,
  });

      /// auditAnnotations contains CEL expressions which are used to produce audit annotations for the audit event of the API request. validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is required.
  @JsonKey(
    
    name: r'auditAnnotations',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1AuditAnnotation>? auditAnnotations;



      /// failurePolicy defines how to handle failures for the admission policy. Failures can occur from CEL expression parse errors, type check errors, runtime errors and invalid or mis-configured policy definitions or bindings.  A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid if spec.paramRef.name refers to a non-existent resource.  failurePolicy does not define how validations that evaluate to false are handled.  When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions define how failures are enforced.  Allowed values are Ignore or Fail. Defaults to Fail.
  @JsonKey(
    
    name: r'failurePolicy',
    required: false,
    includeIfNull: false
  )


  final String? failurePolicy;



      /// MatchConditions is a list of conditions that must be met for a request to be validated. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.  If a parameter object is provided, it can be accessed via the `params` handle in the same manner as validation expressions.  The exact matching logic is (in order):   1. If ANY matchCondition evaluates to FALSE, the policy is skipped.   2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.   3. If any matchCondition evaluates to an error (but none are FALSE):      - If failurePolicy=Fail, reject the request      - If failurePolicy=Ignore, the policy is skipped
  @JsonKey(
    
    name: r'matchConditions',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1MatchCondition>? matchConditions;



  @JsonKey(
    
    name: r'matchConstraints',
    required: false,
    includeIfNull: false
  )


  final V1alpha1MatchResources? matchConstraints;



  @JsonKey(
    
    name: r'paramKind',
    required: false,
    includeIfNull: false
  )


  final V1alpha1ParamKind? paramKind;



      /// Validations contain CEL expressions which is used to apply the validation. Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is required.
  @JsonKey(
    
    name: r'validations',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1Validation>? validations;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ValidatingAdmissionPolicySpec &&
     other.auditAnnotations == auditAnnotations &&
     other.failurePolicy == failurePolicy &&
     other.matchConditions == matchConditions &&
     other.matchConstraints == matchConstraints &&
     other.paramKind == paramKind &&
     other.validations == validations;

  @override
  int get hashCode =>
    auditAnnotations.hashCode +
    failurePolicy.hashCode +
    matchConditions.hashCode +
    matchConstraints.hashCode +
    paramKind.hashCode +
    validations.hashCode;

  factory V1alpha1ValidatingAdmissionPolicySpec.fromJson(Map<String, dynamic> json) => _$V1alpha1ValidatingAdmissionPolicySpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ValidatingAdmissionPolicySpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

