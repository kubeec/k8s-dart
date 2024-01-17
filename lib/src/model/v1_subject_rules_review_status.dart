//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_resource_rule.dart';
import 'package:k8s/src/model/v1_non_resource_rule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_subject_rules_review_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SubjectRulesReviewStatus {
  /// Returns a new [V1SubjectRulesReviewStatus] instance.
  V1SubjectRulesReviewStatus({

     this.evaluationError,

    required  this.incomplete,

    required  this.nonResourceRules,

    required  this.resourceRules,
  });

      /// EvaluationError can appear in combination with Rules. It indicates an error occurred during rule evaluation, such as an authorizer that doesn't support rule evaluation, and that ResourceRules and/or NonResourceRules may be incomplete.
  @JsonKey(
    
    name: r'evaluationError',
    required: false,
    includeIfNull: false
  )


  final String? evaluationError;



      /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  @JsonKey(
    
    name: r'incomplete',
    required: true,
    includeIfNull: false
  )


  final bool incomplete;



      /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @JsonKey(
    
    name: r'nonResourceRules',
    required: true,
    includeIfNull: false
  )


  final List<V1NonResourceRule> nonResourceRules;



      /// ResourceRules is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  @JsonKey(
    
    name: r'resourceRules',
    required: true,
    includeIfNull: false
  )


  final List<V1ResourceRule> resourceRules;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SubjectRulesReviewStatus &&
     other.evaluationError == evaluationError &&
     other.incomplete == incomplete &&
     other.nonResourceRules == nonResourceRules &&
     other.resourceRules == resourceRules;

  @override
  int get hashCode =>
    evaluationError.hashCode +
    incomplete.hashCode +
    nonResourceRules.hashCode +
    resourceRules.hashCode;

  factory V1SubjectRulesReviewStatus.fromJson(Map<String, dynamic> json) => _$V1SubjectRulesReviewStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1SubjectRulesReviewStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

