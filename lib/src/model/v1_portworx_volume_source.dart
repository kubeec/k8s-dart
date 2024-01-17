//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_portworx_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PortworxVolumeSource {
  /// Returns a new [V1PortworxVolumeSource] instance.
  V1PortworxVolumeSource({

     this.fsType,

     this.readOnly,

    required  this.volumeID,
  });

      /// fSType represents the filesystem type to mount Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// volumeID uniquely identifies a Portworx volume
  @JsonKey(
    
    name: r'volumeID',
    required: true,
    includeIfNull: false
  )


  final String volumeID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PortworxVolumeSource &&
     other.fsType == fsType &&
     other.readOnly == readOnly &&
     other.volumeID == volumeID;

  @override
  int get hashCode =>
    fsType.hashCode +
    readOnly.hashCode +
    volumeID.hashCode;

  factory V1PortworxVolumeSource.fromJson(Map<String, dynamic> json) => _$V1PortworxVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1PortworxVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

