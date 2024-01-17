//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_local_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_storage_os_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StorageOSVolumeSource {
  /// Returns a new [V1StorageOSVolumeSource] instance.
  V1StorageOSVolumeSource({

     this.fsType,

     this.readOnly,

     this.secretRef,

     this.volumeName,

     this.volumeNamespace,
  });

      /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified.
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



  @JsonKey(
    
    name: r'secretRef',
    required: false,
    includeIfNull: false
  )


  final V1LocalObjectReference? secretRef;



      /// volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
  @JsonKey(
    
    name: r'volumeName',
    required: false,
    includeIfNull: false
  )


  final String? volumeName;



      /// volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to \"default\" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
  @JsonKey(
    
    name: r'volumeNamespace',
    required: false,
    includeIfNull: false
  )


  final String? volumeNamespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StorageOSVolumeSource &&
     other.fsType == fsType &&
     other.readOnly == readOnly &&
     other.secretRef == secretRef &&
     other.volumeName == volumeName &&
     other.volumeNamespace == volumeNamespace;

  @override
  int get hashCode =>
    fsType.hashCode +
    readOnly.hashCode +
    secretRef.hashCode +
    volumeName.hashCode +
    volumeNamespace.hashCode;

  factory V1StorageOSVolumeSource.fromJson(Map<String, dynamic> json) => _$V1StorageOSVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1StorageOSVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

