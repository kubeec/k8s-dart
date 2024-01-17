//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeStatus {
  /// Returns a new [V1PersistentVolumeStatus] instance.
  V1PersistentVolumeStatus({

     this.message,

     this.phase,

     this.reason,
  });

      /// message is a human-readable message indicating details about why the volume is in this state.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
  @JsonKey(
    
    name: r'phase',
    required: false,
    includeIfNull: false
  )


  final String? phase;



      /// reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeStatus &&
     other.message == message &&
     other.phase == phase &&
     other.reason == reason;

  @override
  int get hashCode =>
    message.hashCode +
    phase.hashCode +
    reason.hashCode;

  factory V1PersistentVolumeStatus.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

