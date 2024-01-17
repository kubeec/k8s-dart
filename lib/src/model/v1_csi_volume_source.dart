//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_local_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_csi_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CSIVolumeSource {
  /// Returns a new [V1CSIVolumeSource] instance.
  V1CSIVolumeSource({

    required  this.driver,

     this.fsType,

     this.nodePublishSecretRef,

     this.readOnly,

     this.volumeAttributes,
  });

      /// driver is the name of the CSI driver that handles this volume. Consult with your admin for the correct name as registered in the cluster.
  @JsonKey(
    
    name: r'driver',
    required: true,
    includeIfNull: false
  )


  final String driver;



      /// fsType to mount. Ex. \"ext4\", \"xfs\", \"ntfs\". If not provided, the empty value is passed to the associated CSI driver which will determine the default filesystem to apply.
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



  @JsonKey(
    
    name: r'nodePublishSecretRef',
    required: false,
    includeIfNull: false
  )


  final V1LocalObjectReference? nodePublishSecretRef;



      /// readOnly specifies a read-only configuration for the volume. Defaults to false (read/write).
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



      /// volumeAttributes stores driver-specific properties that are passed to the CSI driver. Consult your driver's documentation for supported values.
  @JsonKey(
    
    name: r'volumeAttributes',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? volumeAttributes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CSIVolumeSource &&
     other.driver == driver &&
     other.fsType == fsType &&
     other.nodePublishSecretRef == nodePublishSecretRef &&
     other.readOnly == readOnly &&
     other.volumeAttributes == volumeAttributes;

  @override
  int get hashCode =>
    driver.hashCode +
    fsType.hashCode +
    nodePublishSecretRef.hashCode +
    readOnly.hashCode +
    volumeAttributes.hashCode;

  factory V1CSIVolumeSource.fromJson(Map<String, dynamic> json) => _$V1CSIVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1CSIVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

