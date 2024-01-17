//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_flow_schema_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2FlowSchemaCondition {
  /// Returns a new [V1beta2FlowSchemaCondition] instance.
  V1beta2FlowSchemaCondition({

     this.lastTransitionTime,

     this.message,

     this.reason,

     this.status,

     this.type,
  });

      /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



      /// `message` is a human-readable message indicating details about last transition.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// `status` is the status of the condition. Can be True, False, Unknown. Required.
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false
  )


  final String? status;



      /// `type` is the type of the condition. Required.
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2FlowSchemaCondition &&
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

  factory V1beta2FlowSchemaCondition.fromJson(Map<String, dynamic> json) => _$V1beta2FlowSchemaConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2FlowSchemaConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

