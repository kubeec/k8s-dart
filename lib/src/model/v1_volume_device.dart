//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_device.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeDevice {
  /// Returns a new [V1VolumeDevice] instance.
  V1VolumeDevice({

    required  this.devicePath,

    required  this.name,
  });

      /// devicePath is the path inside of the container that the device will be mapped to.
  @JsonKey(
    
    name: r'devicePath',
    required: true,
    includeIfNull: false
  )


  final String devicePath;



      /// name must match the name of a persistentVolumeClaim in the pod
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeDevice &&
     other.devicePath == devicePath &&
     other.name == name;

  @override
  int get hashCode =>
    devicePath.hashCode +
    name.hashCode;

  factory V1VolumeDevice.fromJson(Map<String, dynamic> json) => _$V1VolumeDeviceFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeDeviceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

