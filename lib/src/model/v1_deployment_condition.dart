//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_deployment_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DeploymentCondition {
  /// Returns a new [V1DeploymentCondition] instance.
  V1DeploymentCondition({

     this.lastTransitionTime,

     this.lastUpdateTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// Last time the condition transitioned from one status to another.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// The last time this condition was updated.
  @JsonKey(
    
    name: r'lastUpdateTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastUpdateTime;



      /// A human readable message indicating details about the transition.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// The reason for the condition's last transition.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// Status of the condition, one of True, False, Unknown.
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// Type of deployment condition.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DeploymentCondition &&
     other.lastTransitionTime == lastTransitionTime &&
     other.lastUpdateTime == lastUpdateTime &&
     other.message == message &&
     other.reason == reason &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    lastTransitionTime.hashCode +
    lastUpdateTime.hashCode +
    message.hashCode +
    reason.hashCode +
    status.hashCode +
    type.hashCode;

  factory V1DeploymentCondition.fromJson(Map<String, dynamic> json) => _$V1DeploymentConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1DeploymentConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

