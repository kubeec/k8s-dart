//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_csi_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CSIPersistentVolumeSource {
  /// Returns a new [V1CSIPersistentVolumeSource] instance.
  V1CSIPersistentVolumeSource({

     this.controllerExpandSecretRef,

     this.controllerPublishSecretRef,

    required  this.driver,

     this.fsType,

     this.nodeExpandSecretRef,

     this.nodePublishSecretRef,

     this.nodeStageSecretRef,

     this.readOnly,

     this.volumeAttributes,

    required  this.volumeHandle,
  });

  @JsonKey(
    
    name: r'controllerExpandSecretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? controllerExpandSecretRef;



  @JsonKey(
    
    name: r'controllerPublishSecretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? controllerPublishSecretRef;



      /// driver is the name of the driver to use for this volume. Required.
  @JsonKey(
    
    name: r'driver',
    required: true,
    includeIfNull: false
  )


  final String driver;



      /// fsType to mount. Must be a filesystem type supported by the host operating system. Ex. \"ext4\", \"xfs\", \"ntfs\".
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



  @JsonKey(
    
    name: r'nodeExpandSecretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? nodeExpandSecretRef;



  @JsonKey(
    
    name: r'nodePublishSecretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? nodePublishSecretRef;



  @JsonKey(
    
    name: r'nodeStageSecretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? nodeStageSecretRef;



      /// readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// volumeAttributes of the volume to publish.
  @JsonKey(
    
    name: r'volumeAttributes',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? volumeAttributes;



      /// volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  @JsonKey(
    
    name: r'volumeHandle',
    required: true,
    includeIfNull: false
  )


  final String volumeHandle;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CSIPersistentVolumeSource &&
     other.controllerExpandSecretRef == controllerExpandSecretRef &&
     other.controllerPublishSecretRef == controllerPublishSecretRef &&
     other.driver == driver &&
     other.fsType == fsType &&
     other.nodeExpandSecretRef == nodeExpandSecretRef &&
     other.nodePublishSecretRef == nodePublishSecretRef &&
     other.nodeStageSecretRef == nodeStageSecretRef &&
     other.readOnly == readOnly &&
     other.volumeAttributes == volumeAttributes &&
     other.volumeHandle == volumeHandle;

  @override
  int get hashCode =>
    controllerExpandSecretRef.hashCode +
    controllerPublishSecretRef.hashCode +
    driver.hashCode +
    fsType.hashCode +
    nodeExpandSecretRef.hashCode +
    nodePublishSecretRef.hashCode +
    nodeStageSecretRef.hashCode +
    readOnly.hashCode +
    volumeAttributes.hashCode +
    volumeHandle.hashCode;

  factory V1CSIPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1CSIPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1CSIPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

