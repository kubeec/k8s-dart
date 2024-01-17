//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_cinder_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CinderPersistentVolumeSource {
  /// Returns a new [V1CinderPersistentVolumeSource] instance.
  V1CinderPersistentVolumeSource({

     this.fsType,

     this.readOnly,

     this.secretRef,

    required  this.volumeID,
  });

      /// fsType Filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
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


  final V1SecretReference? secretRef;



      /// volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  @JsonKey(
    
    name: r'volumeID',
    required: true,
    includeIfNull: false
  )


  final String volumeID;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CinderPersistentVolumeSource &&
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

  factory V1CinderPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1CinderPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1CinderPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

