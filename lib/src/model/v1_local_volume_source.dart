//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_local_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LocalVolumeSource {
  /// Returns a new [V1LocalVolumeSource] instance.
  V1LocalVolumeSource({

     this.fsType,

    required  this.path,
  });

      /// fsType is the filesystem type to mount. It applies only when the Path is a block device. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". The default value is to auto-select a filesystem if unspecified.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// path of the full path to the volume on the node. It can be either a directory or block device (disk, partition, ...).
  @JsonKey(
    
    name: r'path',
    required: true,
    includeIfNull: false
  )


  final String path;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LocalVolumeSource &&
     other.fsType == fsType &&
     other.path == path;

  @override
  int get hashCode =>
    fsType.hashCode +
    path.hashCode;

  factory V1LocalVolumeSource.fromJson(Map<String, dynamic> json) => _$V1LocalVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1LocalVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

