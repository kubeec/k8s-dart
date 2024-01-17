//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_watch_event.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1WatchEvent {
  /// Returns a new [V1WatchEvent] instance.
  V1WatchEvent({

    required  this.object,

    required  this.type,
  });

      /// Object is:  * If Type is Added or Modified: the new state of the object.  * If Type is Deleted: the state of the object immediately before deletion.  * If Type is Error: *Status is recommended; other types may make sense    depending on context.
  @JsonKey(
    
    name: r'object',
    required: true,
    includeIfNull: false
  )


  final Object object;



  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1WatchEvent &&
     other.object == object &&
     other.type == type;

  @override
  int get hashCode =>
    object.hashCode +
    type.hashCode;

  factory V1WatchEvent.fromJson(Map<String, dynamic> json) => _$V1WatchEventFromJson(json);

  Map<String, dynamic> toJson() => _$V1WatchEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

