//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_claim_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeClaimCondition {
  /// Returns a new [V1PersistentVolumeClaimCondition] instance.
  V1PersistentVolumeClaimCondition({

     this.lastProbeTime,

     this.lastTransitionTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// lastProbeTime is the time we probed the condition.
  @JsonKey(
    
    name: r'lastProbeTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastProbeTime;



      /// lastTransitionTime is the time the condition transitioned from one status to another.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// message is the human-readable message indicating details about last transition.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// reason is a unique, this should be a short, machine understandable string that gives the reason for condition's last transition. If it reports \"ResizeStarted\" that means the underlying persistent volume is being resized.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeClaimCondition &&
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

  factory V1PersistentVolumeClaimCondition.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeClaimConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeClaimConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

