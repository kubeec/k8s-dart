//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_azure_disk_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1AzureDiskVolumeSource {
  /// Returns a new [V1AzureDiskVolumeSource] instance.
  V1AzureDiskVolumeSource({

     this.cachingMode,

    required  this.diskName,

    required  this.diskURI,

     this.fsType,

     this.kind,

     this.readOnly,
  });

      /// cachingMode is the Host Caching mode: None, Read Only, Read Write.
  @JsonKey(
    
    name: r'cachingMode',
    required: false,
    includeIfNull: false
  )


  final String? cachingMode;



      /// diskName is the Name of the data disk in the blob storage
  @JsonKey(
    
    name: r'diskName',
    required: true,
    includeIfNull: false
  )


  final String diskName;



      /// diskURI is the URI of data disk in the blob storage
  @JsonKey(
    
    name: r'diskURI',
    required: true,
    includeIfNull: false
  )


  final String diskURI;



      /// fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AzureDiskVolumeSource &&
     other.cachingMode == cachingMode &&
     other.diskName == diskName &&
     other.diskURI == diskURI &&
     other.fsType == fsType &&
     other.kind == kind &&
     other.readOnly == readOnly;

  @override
  int get hashCode =>
    cachingMode.hashCode +
    diskName.hashCode +
    diskURI.hashCode +
    fsType.hashCode +
    kind.hashCode +
    readOnly.hashCode;

  factory V1AzureDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$V1AzureDiskVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1AzureDiskVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

