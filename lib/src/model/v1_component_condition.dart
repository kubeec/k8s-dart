//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_component_condition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ComponentCondition {
  /// Returns a new [V1ComponentCondition] instance.
  V1ComponentCondition({

     this.error,

     this.message,

    required  this.status,

    required  this.type,
  });

      /// Condition error code for a component. For example, a health check error code.
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false
  )


  final String? error;



      /// Message about the condition for a component. For example, information about a health check.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// Status of the condition for a component. Valid values for \"Healthy\": \"True\", \"False\", or \"Unknown\".
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false
  )


  final String status;



      /// Type of condition for a component. Valid value: \"Healthy\"
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ComponentCondition &&
     other.error == error &&
     other.message == message &&
     other.status == status &&
     other.type == type;

  @override
  int get hashCode =>
    error.hashCode +
    message.hashCode +
    status.hashCode +
    type.hashCode;

  factory V1ComponentCondition.fromJson(Map<String, dynamic> json) => _$V1ComponentConditionFromJson(json);

  Map<String, dynamic> toJson() => _$V1ComponentConditionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

