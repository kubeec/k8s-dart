//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_attached_volume.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1AttachedVolume {
  /// Returns a new [V1AttachedVolume] instance.
  V1AttachedVolume({

    required  this.devicePath,

    required  this.name,
  });

      /// DevicePath represents the device path where the volume should be available
  @JsonKey(
    
    name: r'devicePath',
    required: true,
    includeIfNull: false
  )


  final String devicePath;



      /// Name of the attached volume
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AttachedVolume &&
     other.devicePath == devicePath &&
     other.name == name;

  @override
  int get hashCode =>
    devicePath.hashCode +
    name.hashCode;

  factory V1AttachedVolume.fromJson(Map<String, dynamic> json) => _$V1AttachedVolumeFromJson(json);

  Map<String, dynamic> toJson() => _$V1AttachedVolumeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

