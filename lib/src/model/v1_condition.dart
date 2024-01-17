//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Condition {
  /// Returns a new [V1Condition] instance.
  V1Condition({

    required  this.lastTransitionTime,

    required  this.message,

     this.observedGeneration,

    required  this.reason,

    required  this.status,

    required  this.type,
  });

      /// lastTransitionTime is the last time the condition transitioned from one status to another. This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: true,
    includeIfNull: false
  )


  final DateTime lastTransitionTime;



      /// message is a human readable message indicating details about the transition. This may be an empty string.
  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false
  )


  final String message;



      /// observedGeneration represents the .metadata.generation that the condition was set based upon. For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date with respect to the current state of the instance.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



      /// reason contains a programmatic identifier indicating the reason for the condition's last transition. Producers of specific condition types may define expected values and meanings for this field, and whether the values are considered a guaranteed API. The value should be a CamelCase string. This field may not be empty.
  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false
  )


  final String reason;



      /// status of the condition, one of True, False, Unknown.
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// type of condition in CamelCase or in foo.example.com/CamelCase.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Condition &&
     other.lastTransitionTime == lastTransitionTime &&
     other.message == message &&
     other.observedGeneration == observedGeneration &&
     other.reason == reason &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    lastTransitionTime.hashCode +
    message.hashCode +
    observedGeneration.hashCode +
    reason.hashCode +
    status.hashCode +
    type.hashCode;

  factory V1Condition.fromJson(Map<String, dynamic> json) => _$V1ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1ConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

