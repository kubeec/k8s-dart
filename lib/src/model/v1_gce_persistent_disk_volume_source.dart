//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_gce_persistent_disk_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1GCEPersistentDiskVolumeSource {
  /// Returns a new [V1GCEPersistentDiskVolumeSource] instance.
  V1GCEPersistentDiskVolumeSource({

     this.fsType,

     this.partition,

    required  this.pdName,

     this.readOnly,
  });

      /// fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// partition is the partition in the volume that you want to mount. If omitted, the default is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as \"1\". Similarly, the volume partition for /dev/sda is \"0\" (or you can leave the property empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @JsonKey(
    
    name: r'partition',
    required: false,
    includeIfNull: false
  )


  final int? partition;



      /// pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @JsonKey(
    
    name: r'pdName',
    required: true,
    includeIfNull: false
  )


  final String pdName;



      /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1GCEPersistentDiskVolumeSource &&
     other.fsType == fsType &&
     other.partition == partition &&
     other.pdName == pdName &&
     other.readOnly == readOnly;

  @override
  int get hashCode =>
    fsType.hashCode +
    partition.hashCode +
    pdName.hashCode +
    readOnly.hashCode;

  factory V1GCEPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$V1GCEPersistentDiskVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1GCEPersistentDiskVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

