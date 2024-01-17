//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeCondition {
  /// Returns a new [V1NodeCondition] instance.
  V1NodeCondition({

     this.lastHeartbeatTime,

     this.lastTransitionTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// Last time we got an update on a given condition.
  @JsonKey(
    
    name: r'lastHeartbeatTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastHeartbeatTime;



      /// Last time the condition transit from one status to another.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// Human readable message indicating details about last transition.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// (brief) reason for the condition's last transition.
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



      /// Type of node condition.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeCondition &&
     other.lastHeartbeatTime == lastHeartbeatTime &&
     other.lastTransitionTime == lastTransitionTime &&
     other.message == message &&
     other.reason == reason &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    lastHeartbeatTime.hashCode +
    lastTransitionTime.hashCode +
    message.hashCode +
    reason.hashCode +
    status.hashCode +
    type.hashCode;

  factory V1NodeCondition.fromJson(Map<String, dynamic> json) => _$V1NodeConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

