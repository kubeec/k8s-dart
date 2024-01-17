//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_subject.dart';
import 'package:k8s/src/model/v1beta2_resource_policy_rule.dart';
import 'package:k8s/src/model/v1beta2_non_resource_policy_rule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_policy_rules_with_subjects.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2PolicyRulesWithSubjects {
  /// Returns a new [V1beta2PolicyRulesWithSubjects] instance.
  V1beta2PolicyRulesWithSubjects({

     this.nonResourceRules,

     this.resourceRules,

    required  this.subjects,
  });

      /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
  @JsonKey(
    
    name: r'nonResourceRules',
    required: false,
    includeIfNull: false
  )


  final List<V1beta2NonResourcePolicyRule>? nonResourceRules;



      /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  @JsonKey(
    
    name: r'resourceRules',
    required: false,
    includeIfNull: false
  )


  final List<V1beta2ResourcePolicyRule>? resourceRules;



      /// subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
  @JsonKey(
    
    name: r'subjects',
    required: true,
    includeIfNull: false
  )


  final List<V1beta2Subject> subjects;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2PolicyRulesWithSubjects &&
     other.nonResourceRules == nonResourceRules &&
     other.resourceRules == resourceRules &&
     other.subjects == subjects;

  @override
  int get hashCode =>
    nonResourceRules.hashCode +
    resourceRules.hashCode +
    subjects.hashCode;

  factory V1beta2PolicyRulesWithSubjects.fromJson(Map<String, dynamic> json) => _$V1beta2PolicyRulesWithSubjectsFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2PolicyRulesWithSubjectsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

