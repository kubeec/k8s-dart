//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_failure_policy_on_pod_conditions_pattern.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodFailurePolicyOnPodConditionsPattern {
  /// Returns a new [V1PodFailurePolicyOnPodConditionsPattern] instance.
  V1PodFailurePolicyOnPodConditionsPattern({

    required  this.status,

    required  this.type,
  });

      /// Specifies the required Pod condition status. To match a pod condition it is required that the specified status equals the pod condition status. Defaults to True.
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// Specifies the required Pod condition type. To match a pod condition it is required that specified type equals the pod condition type.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodFailurePolicyOnPodConditionsPattern &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    status.hashCode +
    type.hashCode;

  factory V1PodFailurePolicyOnPodConditionsPattern.fromJson(Map<String, dynamic> json) => _$V1PodFailurePolicyOnPodConditionsPatternFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodFailurePolicyOnPodConditionsPatternToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

