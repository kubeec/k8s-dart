//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_failure_policy_on_exit_codes_requirement.dart';
import 'package:k8s/src/model/v1_pod_failure_policy_on_pod_conditions_pattern.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_failure_policy_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodFailurePolicyRule {
  /// Returns a new [V1PodFailurePolicyRule] instance.
  V1PodFailurePolicyRule({

    required  this.action,

     this.onExitCodes,

    required  this.onPodConditions,
  });

      /// Specifies the action taken on a pod failure when the requirements are satisfied. Possible values are:  - FailJob: indicates that the pod's job is marked as Failed and all   running pods are terminated. - Ignore: indicates that the counter towards the .backoffLimit is not   incremented and a replacement pod is created. - Count: indicates that the pod is handled in the default way - the   counter towards the .backoffLimit is incremented. Additional values are considered to be added in the future. Clients should react to an unknown action by skipping the rule.
  @JsonKey(
    
    name: r'action',
    required: true,
    includeIfNull: false
  )


  final String action;



  @JsonKey(
    
    name: r'onExitCodes',
    required: false,
    includeIfNull: false
  )


  final V1PodFailurePolicyOnExitCodesRequirement? onExitCodes;



      /// Represents the requirement on the pod conditions. The requirement is represented as a list of pod condition patterns. The requirement is satisfied if at least one pattern matches an actual pod condition. At most 20 elements are allowed.
  @JsonKey(
    
    name: r'onPodConditions',
    required: true,
    includeIfNull: false
  )


  final List<V1PodFailurePolicyOnPodConditionsPattern> onPodConditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodFailurePolicyRule &&
     other.action == action &&
     other.onExitCodes == onExitCodes &&
     other.onPodConditions == onPodConditions;

  @override
  int get hashCode =>
    action.hashCode +
    onExitCodes.hashCode +
    onPodConditions.hashCode;

  factory V1PodFailurePolicyRule.fromJson(Map<String, dynamic> json) => _$V1PodFailurePolicyRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodFailurePolicyRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

