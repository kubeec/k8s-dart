//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_failure_policy_on_exit_codes_requirement.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodFailurePolicyOnExitCodesRequirement {
  /// Returns a new [V1PodFailurePolicyOnExitCodesRequirement] instance.
  V1PodFailurePolicyOnExitCodesRequirement({

     this.containerName,

    required  this.operator_,

    required  this.values,
  });

      /// Restricts the check for exit codes to the container with the specified name. When null, the rule applies to all containers. When specified, it should match one the container or initContainer names in the pod template.
  @JsonKey(
    
    name: r'containerName',
    required: false,
    includeIfNull: false
  )


  final String? containerName;



      /// Represents the relationship between the container exit code(s) and the specified values. Containers completed with success (exit code 0) are excluded from the requirement check. Possible values are:  - In: the requirement is satisfied if at least one container exit code   (might be multiple if there are multiple containers not restricted   by the 'containerName' field) is in the set of specified values. - NotIn: the requirement is satisfied if at least one container exit code   (might be multiple if there are multiple containers not restricted   by the 'containerName' field) is not in the set of specified values. Additional values are considered to be added in the future. Clients should react to an unknown operator by assuming the requirement is not satisfied.
  @JsonKey(
    
    name: r'operator',
    required: true,
    includeIfNull: false
  )


  final String operator_;



      /// Specifies the set of values. Each returned container exit code (might be multiple in case of multiple containers) is checked against this set of values with respect to the operator. The list of values must be ordered and must not contain duplicates. Value '0' cannot be used for the In operator. At least one element is required. At most 255 elements are allowed.
  @JsonKey(
    
    name: r'values',
    required: true,
    includeIfNull: false
  )


  final List<int> values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodFailurePolicyOnExitCodesRequirement &&
     other.containerName == containerName &&
     other.operator_ == operator_ &&
     other.values == values;

  @override
  int get hashCode =>
    containerName.hashCode +
    operator_.hashCode +
    values.hashCode;

  factory V1PodFailurePolicyOnExitCodesRequirement.fromJson(Map<String, dynamic> json) => _$V1PodFailurePolicyOnExitCodesRequirementFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodFailurePolicyOnExitCodesRequirementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

