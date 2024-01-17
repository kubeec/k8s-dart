//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_storage_version_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1StorageVersionCondition {
  /// Returns a new [V1alpha1StorageVersionCondition] instance.
  V1alpha1StorageVersionCondition({

     this.lastTransitionTime,

     this.message,

     this.observedGeneration,

    required  this.reason,

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



      /// If set, this represents the .metadata.generation that the condition was set based upon.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



      /// The reason for the condition's last transition.
  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false
  )


  final String reason;



      /// Status of the condition, one of True, False, Unknown.
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// Type of the condition.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1StorageVersionCondition &&
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

  factory V1alpha1StorageVersionCondition.fromJson(Map<String, dynamic> json) => _$V1alpha1StorageVersionConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1StorageVersionConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

