//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_fc_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1FCVolumeSource {
  /// Returns a new [V1FCVolumeSource] instance.
  V1FCVolumeSource({

     this.fsType,

     this.lun,

     this.readOnly,

     this.targetWWNs,

     this.wwids,
  });

      /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// lun is Optional: FC target lun number
  @JsonKey(
    
    name: r'lun',
    required: false,
    includeIfNull: false
  )


  final int? lun;



      /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// targetWWNs is Optional: FC target worldwide names (WWNs)
  @JsonKey(
    
    name: r'targetWWNs',
    required: false,
    includeIfNull: false
  )


  final List<String>? targetWWNs;



      /// wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
  @JsonKey(
    
    name: r'wwids',
    required: false,
    includeIfNull: false
  )


  final List<String>? wwids;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1FCVolumeSource &&
     other.fsType == fsType &&
     other.lun == lun &&
     other.readOnly == readOnly &&
     other.targetWWNs == targetWWNs &&
     other.wwids == wwids;

  @override
  int get hashCode =>
    fsType.hashCode +
    lun.hashCode +
    readOnly.hashCode +
    targetWWNs.hashCode +
    wwids.hashCode;

  factory V1FCVolumeSource.fromJson(Map<String, dynamic> json) => _$V1FCVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1FCVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

