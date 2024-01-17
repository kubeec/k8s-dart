//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v2_horizontal_pod_autoscaler_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2HorizontalPodAutoscalerCondition {
  /// Returns a new [V2HorizontalPodAutoscalerCondition] instance.
  V2HorizontalPodAutoscalerCondition({

     this.lastTransitionTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// lastTransitionTime is the last time the condition transitioned from one status to another
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// message is a human-readable explanation containing details about the transition
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// reason is the reason for the condition's last transition.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// status is the status of the condition (True, False, Unknown)
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// type describes the current condition
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2HorizontalPodAutoscalerCondition &&
     other.lastTransitionTime == lastTransitionTime &&
     other.message == message &&
     other.reason == reason &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    lastTransitionTime.hashCode +
    message.hashCode +
    reason.hashCode +
    status.hashCode +
    type.hashCode;

  factory V2HorizontalPodAutoscalerCondition.fromJson(Map<String, dynamic> json) => _$V2HorizontalPodAutoscalerConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V2HorizontalPodAutoscalerConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

