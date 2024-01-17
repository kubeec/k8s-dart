//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_state_terminated.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerStateTerminated {
  /// Returns a new [V1ContainerStateTerminated] instance.
  V1ContainerStateTerminated({

     this.containerID,

    required  this.exitCode,

     this.finishedAt,

     this.message,

     this.reason,

     this.signal,

     this.startedAt,
  });

      /// Container's ID in the format '<type>://<container_id>'
  @JsonKey(
    
    name: r'containerID',
    required: false,
    includeIfNull: false
  )


  final String? containerID;



      /// Exit status from the last termination of the container
  @JsonKey(
    
    name: r'exitCode',
    required: true,
    includeIfNull: false
  )


  final int exitCode;



      /// Time at which the container last terminated
  @JsonKey(
    
    name: r'finishedAt',
    required: false,
    includeIfNull: false
  )


  final DateTime? finishedAt;



      /// Message regarding the last termination of the container
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// (brief) reason from the last termination of the container
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// Signal from the last termination of the container
  @JsonKey(
    
    name: r'signal',
    required: false,
    includeIfNull: false
  )


  final int? signal;



      /// Time at which previous execution of the container started
  @JsonKey(
    
    name: r'startedAt',
    required: false,
    includeIfNull: false
  )


  final DateTime? startedAt;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerStateTerminated &&
     other.containerID == containerID &&
     other.exitCode == exitCode &&
     other.finishedAt == finishedAt &&
     other.message == message &&
     other.reason == reason &&
     other.signal == signal &&
     other.startedAt == startedAt;

  @override
  int get hashCode =>
    containerID.hashCode +
    exitCode.hashCode +
    finishedAt.hashCode +
    message.hashCode +
    reason.hashCode +
    signal.hashCode +
    startedAt.hashCode;

  factory V1ContainerStateTerminated.fromJson(Map<String, dynamic> json) => _$V1ContainerStateTerminatedFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerStateTerminatedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

