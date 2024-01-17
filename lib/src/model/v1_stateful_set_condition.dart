//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_stateful_set_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatefulSetCondition {
  /// Returns a new [V1StatefulSetCondition] instance.
  V1StatefulSetCondition({

     this.lastTransitionTime,

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



      /// Type of statefulset condition.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatefulSetCondition &&
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

  factory V1StatefulSetCondition.fromJson(Map<String, dynamic> json) => _$V1StatefulSetConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatefulSetConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

