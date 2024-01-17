//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_status_cause.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatusCause {
  /// Returns a new [V1StatusCause] instance.
  V1StatusCause({

     this.field,

     this.message,

     this.reason,
  });

      /// The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.  Examples:   \"name\" - the field \"name\" on the current resource   \"items[0].name\" - the field \"name\" on the first array entry in \"items\"
  @JsonKey(
    
    name: r'field',
    required: false,
    includeIfNull: false
  )


  final String? field;



      /// A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// A machine-readable description of the cause of the error. If this value is empty there is no information available.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatusCause &&
     other.field == field &&
     other.message == message &&
     other.reason == reason;

  @override
  int get hashCode =>
    field.hashCode +
    message.hashCode +
    reason.hashCode;

  factory V1StatusCause.fromJson(Map<String, dynamic> json) => _$V1StatusCauseFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatusCauseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

