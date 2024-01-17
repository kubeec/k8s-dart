//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_local_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_cinder_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CinderVolumeSource {
  /// Returns a new [V1CinderVolumeSource] instance.
  V1CinderVolumeSource({

     this.fsType,

     this.readOnly,

     this.secretRef,

    required  this.volumeID,
  });

      /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @JsonKey(
    
    name: r'secretRef',
    required: false,
    includeIfNull: false
  )


  final V1LocalObjectReference? secretRef;



      /// volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  @JsonKey(
    
    name: r'volumeID',
    required: true,
    includeIfNull: false
  )


  final String volumeID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CinderVolumeSource &&
     other.fsType == fsType &&
     other.readOnly == readOnly &&
     other.secretRef == secretRef &&
     other.volumeID == volumeID;

  @override
  int get hashCode =>
    fsType.hashCode +
    readOnly.hashCode +
    secretRef.hashCode +
    volumeID.hashCode;

  factory V1CinderVolumeSource.fromJson(Map<String, dynamic> json) => _$V1CinderVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1CinderVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

