//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_param_ref.dart';
import 'package:k8s/src/model/v1alpha1_match_resources.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_validating_admission_policy_binding_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ValidatingAdmissionPolicyBindingSpec {
  /// Returns a new [V1alpha1ValidatingAdmissionPolicyBindingSpec] instance.
  V1alpha1ValidatingAdmissionPolicyBindingSpec({

     this.matchResources,

     this.paramRef,

     this.policyName,

     this.validationActions,
  });

  @JsonKey(
    
    name: r'matchResources',
    required: false,
    includeIfNull: false
  )


  final V1alpha1MatchResources? matchResources;



  @JsonKey(
    
    name: r'paramRef',
    required: false,
    includeIfNull: false
  )


  final V1alpha1ParamRef? paramRef;



      /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  @JsonKey(
    
    name: r'policyName',
    required: false,
    includeIfNull: false
  )


  final String? policyName;



      /// validationActions declares how Validations of the referenced ValidatingAdmissionPolicy are enforced. If a validation evaluates to false it is always enforced according to these actions.  Failures defined by the ValidatingAdmissionPolicy's FailurePolicy are enforced according to these actions only if the FailurePolicy is set to Fail, otherwise the failures are ignored. This includes compilation errors, runtime errors and misconfigurations of the policy.  validationActions is declared as a set of action values. Order does not matter. validationActions may not contain duplicates of the same action.  The supported actions values are:  \"Deny\" specifies that a validation failure results in a denied request.  \"Warn\" specifies that a validation failure is reported to the request client in HTTP Warning headers, with a warning code of 299. Warnings can be sent both for allowed or denied admission responses.  \"Audit\" specifies that a validation failure is included in the published audit event for the request. The audit event will contain a `validation.policy.admission.k8s.io/validation_failure` audit annotation with a value containing the details of the validation failures, formatted as a JSON list of objects, each with the following fields: - message: The validation failure message string - policy: The resource name of the ValidatingAdmissionPolicy - binding: The resource name of the ValidatingAdmissionPolicyBinding - expressionIndex: The index of the failed validations in the ValidatingAdmissionPolicy - validationActions: The enforcement actions enacted for the validation failure Example audit annotation: `\"validation.policy.admission.k8s.io/validation_failure\": \"[{\"message\": \"Invalid value\", {\"policy\": \"policy.example.com\", {\"binding\": \"policybinding.example.com\", {\"expressionIndex\": \"1\", {\"validationActions\": [\"Audit\"]}]\"`  Clients should expect to handle additional values by ignoring any values not recognized.  \"Deny\" and \"Warn\" may not be used together since this combination needlessly duplicates the validation failure both in the API response body and the HTTP warning headers.  Required.
  @JsonKey(
    
    name: r'validationActions',
    required: false,
    includeIfNull: false
  )


  final List<String>? validationActions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ValidatingAdmissionPolicyBindingSpec &&
     other.matchResources == matchResources &&
     other.paramRef == paramRef &&
     other.policyName == policyName &&
     other.validationActions == validationActions;

  @override
  int get hashCode =>
    matchResources.hashCode +
    paramRef.hashCode +
    policyName.hashCode +
    validationActions.hashCode;

  factory V1alpha1ValidatingAdmissionPolicyBindingSpec.fromJson(Map<String, dynamic> json) => _$V1alpha1ValidatingAdmissionPolicyBindingSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ValidatingAdmissionPolicyBindingSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

