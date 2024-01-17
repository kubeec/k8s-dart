//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_type_checking.dart';
import 'package:k8s/src/model/v1_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_validating_admission_policy_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ValidatingAdmissionPolicyStatus {
  /// Returns a new [V1alpha1ValidatingAdmissionPolicyStatus] instance.
  V1alpha1ValidatingAdmissionPolicyStatus({

     this.conditions,

     this.observedGeneration,

     this.typeChecking,
  });

      /// The conditions represent the latest available observations of a policy's current state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1Condition>? conditions;



      /// The generation observed by the controller.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



  @JsonKey(
    
    name: r'typeChecking',
    required: false,
    includeIfNull: false
  )


  final V1alpha1TypeChecking? typeChecking;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ValidatingAdmissionPolicyStatus &&
     other.conditions == conditions &&
     other.observedGeneration == observedGeneration &&
     other.typeChecking == typeChecking;

  @override
  int get hashCode =>
    conditions.hashCode +
    observedGeneration.hashCode +
    typeChecking.hashCode;

  factory V1alpha1ValidatingAdmissionPolicyStatus.fromJson(Map<String, dynamic> json) => _$V1alpha1ValidatingAdmissionPolicyStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ValidatingAdmissionPolicyStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

