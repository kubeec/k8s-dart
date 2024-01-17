//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_photon_persistent_disk_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PhotonPersistentDiskVolumeSource {
  /// Returns a new [V1PhotonPersistentDiskVolumeSource] instance.
  V1PhotonPersistentDiskVolumeSource({

     this.fsType,

    required  this.pdID,
  });

      /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// pdID is the ID that identifies Photon Controller persistent disk
  @JsonKey(
    
    name: r'pdID',
    required: true,
    includeIfNull: false
  )


  final String pdID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PhotonPersistentDiskVolumeSource &&
     other.fsType == fsType &&
     other.pdID == pdID;

  @override
  int get hashCode =>
    fsType.hashCode +
    pdID.hashCode;

  factory V1PhotonPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$V1PhotonPersistentDiskVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1PhotonPersistentDiskVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

