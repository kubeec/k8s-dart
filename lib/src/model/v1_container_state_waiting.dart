//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_state_waiting.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerStateWaiting {
  /// Returns a new [V1ContainerStateWaiting] instance.
  V1ContainerStateWaiting({

     this.message,

     this.reason,
  });

      /// Message regarding why the container is not yet running.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// (brief) reason the container is not yet running.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerStateWaiting &&
     other.message == message &&
     other.reason == reason;

  @override
  int get hashCode =>
    message.hashCode +
    reason.hashCode;

  factory V1ContainerStateWaiting.fromJson(Map<String, dynamic> json) => _$V1ContainerStateWaitingFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerStateWaitingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

