//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_vsphere_virtual_disk_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VsphereVirtualDiskVolumeSource {
  /// Returns a new [V1VsphereVirtualDiskVolumeSource] instance.
  V1VsphereVirtualDiskVolumeSource({

     this.fsType,

     this.storagePolicyID,

     this.storagePolicyName,

    required  this.volumePath,
  });

      /// fsType is filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with the StoragePolicyName.
  @JsonKey(
    
    name: r'storagePolicyID',
    required: false,
    includeIfNull: false
  )


  final String? storagePolicyID;



      /// storagePolicyName is the storage Policy Based Management (SPBM) profile name.
  @JsonKey(
    
    name: r'storagePolicyName',
    required: false,
    includeIfNull: false
  )


  final String? storagePolicyName;



      /// volumePath is the path that identifies vSphere volume vmdk
  @JsonKey(
    
    name: r'volumePath',
    required: true,
    includeIfNull: false
  )


  final String volumePath;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VsphereVirtualDiskVolumeSource &&
     other.fsType == fsType &&
     other.storagePolicyID == storagePolicyID &&
     other.storagePolicyName == storagePolicyName &&
     other.volumePath == volumePath;

  @override
  int get hashCode =>
    fsType.hashCode +
    storagePolicyID.hashCode +
    storagePolicyName.hashCode +
    volumePath.hashCode;

  factory V1VsphereVirtualDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$V1VsphereVirtualDiskVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1VsphereVirtualDiskVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

