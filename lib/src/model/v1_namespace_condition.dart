//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_namespace_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NamespaceCondition {
  /// Returns a new [V1NamespaceCondition] instance.
  V1NamespaceCondition({

     this.lastTransitionTime,

     this.message,

     this.reason,

    required  this.status,

    required  this.type,
  });

      /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @JsonKey(
    
    name: r'lastTransitionTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTransitionTime;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



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



      /// Type of namespace controller condition.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NamespaceCondition &&
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

  factory V1NamespaceCondition.fromJson(Map<String, dynamic> json) => _$V1NamespaceConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1NamespaceConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

