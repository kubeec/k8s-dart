//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodCondition {
  /// Returns a new [V1PodCondition] instance.
  V1PodCondition({

     this.lastProbeTime,

     this.lastTransitionTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// Last time we probed the condition.
  @JsonKey(
    
    name: r'lastProbeTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastProbeTime;



      /// Last time the condition transitioned from one status to another.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// Human-readable message indicating details about last transition.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// Unique, one-word, CamelCase reason for the condition's last transition.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// Status is the status of the condition. Can be True, False, Unknown. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// Type is the type of the condition. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodCondition &&
     other.lastProbeTime == lastProbeTime &&
     other.lastTransitionTime == lastTransitionTime &&
     other.message == message &&
     other.reason == reason &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    lastProbeTime.hashCode +
    lastTransitionTime.hashCode +
    message.hashCode +
    reason.hashCode +
    status.hashCode +
    type.hashCode;

  factory V1PodCondition.fromJson(Map<String, dynamic> json) => _$V1PodConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

