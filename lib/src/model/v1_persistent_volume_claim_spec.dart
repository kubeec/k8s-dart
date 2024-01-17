//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_typed_object_reference.dart';
import 'package:k8s/src/model/v1_typed_local_object_reference.dart';
import 'package:k8s/src/model/v1_resource_requirements.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_claim_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeClaimSpec {
  /// Returns a new [V1PersistentVolumeClaimSpec] instance.
  V1PersistentVolumeClaimSpec({

     this.accessModes,

     this.dataSource,

     this.dataSourceRef,

     this.resources,

     this.selector,

     this.storageClassName,

     this.volumeMode,

     this.volumeName,
  });

      /// accessModes contains the desired access modes the volume should have. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  @JsonKey(
    
    name: r'accessModes',
    required: false,
    includeIfNull: false
  )


  final List<String>? accessModes;



  @JsonKey(
    
    name: r'dataSource',
    required: false,
    includeIfNull: false
  )


  final V1TypedLocalObjectReference? dataSource;



  @JsonKey(
    
    name: r'dataSourceRef',
    required: false,
    includeIfNull: false
  )


  final V1TypedObjectReference? dataSourceRef;



  @JsonKey(
    
    name: r'resources',
    required: false,
    includeIfNull: false
  )


  final V1ResourceRequirements? resources;



  @JsonKey(
    
    name: r'selector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? selector;



      /// storageClassName is the name of the StorageClass required by the claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
  @JsonKey(
    
    name: r'storageClassName',
    required: false,
    includeIfNull: false
  )


  final String? storageClassName;



      /// volumeMode defines what type of volume is required by the claim. Value of Filesystem is implied when not included in claim spec.
  @JsonKey(
    
    name: r'volumeMode',
    required: false,
    includeIfNull: false
  )


  final String? volumeMode;



      /// volumeName is the binding reference to the PersistentVolume backing this claim.
  @JsonKey(
    
    name: r'volumeName',
    required: false,
    includeIfNull: false
  )


  final String? volumeName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeClaimSpec &&
     other.accessModes == accessModes &&
     other.dataSource == dataSource &&
     other.dataSourceRef == dataSourceRef &&
     other.resources == resources &&
     other.selector == selector &&
     other.storageClassName == storageClassName &&
     other.volumeMode == volumeMode &&
     other.volumeName == volumeName;

  @override
  int get hashCode =>
    accessModes.hashCode +
    dataSource.hashCode +
    dataSourceRef.hashCode +
    resources.hashCode +
    selector.hashCode +
    storageClassName.hashCode +
    volumeMode.hashCode +
    volumeName.hashCode;

  factory V1PersistentVolumeClaimSpec.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeClaimSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeClaimSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

