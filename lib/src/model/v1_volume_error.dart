//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_error.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeError {
  /// Returns a new [V1VolumeError] instance.
  V1VolumeError({

     this.message,

     this.time,
  });

      /// message represents the error encountered during Attach or Detach operation. This string may be logged, so it should not contain sensitive information.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// time represents the time the error was encountered.
  @JsonKey(
    
    name: r'time',
    required: false,
    includeIfNull: false
  )


  final DateTime? time;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeError &&
     other.message == message &&
     other.time == time;

  @override
  int get hashCode =>
    message.hashCode +
    time.hashCode;

  factory V1VolumeError.fromJson(Map<String, dynamic> json) => _$V1VolumeErrorFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

