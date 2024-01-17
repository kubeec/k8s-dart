//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_persistent_volume_claim_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_persistent_volume_claim_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PersistentVolumeClaimStatus {
  /// Returns a new [V1PersistentVolumeClaimStatus] instance.
  V1PersistentVolumeClaimStatus({

     this.accessModes,

     this.allocatedResources,

     this.capacity,

     this.conditions,

     this.phase,

     this.resizeStatus,
  });

      /// accessModes contains the actual access modes the volume backing the PVC has. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
  @JsonKey(
    
    name: r'accessModes',
    required: false,
    includeIfNull: false
  )


  final List<String>? accessModes;



      /// allocatedResources is the storage resource within AllocatedResources tracks the capacity allocated to a PVC. It may be larger than the actual capacity when a volume expansion operation is requested. For storage quota, the larger value from allocatedResources and PVC.spec.resources is used. If allocatedResources is not set, PVC.spec.resources alone is used for quota calculation. If a volume expansion capacity request is lowered, allocatedResources is only lowered if there are no expansion operations in progress and if the actual volume capacity is equal or lower than the requested capacity. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  @JsonKey(
    
    name: r'allocatedResources',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? allocatedResources;



      /// capacity represents the actual resources of the underlying volume.
  @JsonKey(
    
    name: r'capacity',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? capacity;



      /// conditions is the current Condition of persistent volume claim. If underlying persistent volume is being resized then the Condition will be set to 'ResizeStarted'.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1PersistentVolumeClaimCondition>? conditions;



      /// phase represents the current phase of PersistentVolumeClaim.
  @JsonKey(
    
    name: r'phase',
    required: false,
    includeIfNull: false
  )


  final String? phase;



      /// resizeStatus stores status of resize operation. ResizeStatus is not set by default but when expansion is complete resizeStatus is set to empty string by resize controller or kubelet. This is an alpha field and requires enabling RecoverVolumeExpansionFailure feature.
  @JsonKey(
    
    name: r'resizeStatus',
    required: false,
    includeIfNull: false
  )


  final String? resizeStatus;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PersistentVolumeClaimStatus &&
     other.accessModes == accessModes &&
     other.allocatedResources == allocatedResources &&
     other.capacity == capacity &&
     other.conditions == conditions &&
     other.phase == phase &&
     other.resizeStatus == resizeStatus;

  @override
  int get hashCode =>
    accessModes.hashCode +
    allocatedResources.hashCode +
    capacity.hashCode +
    conditions.hashCode +
    phase.hashCode +
    resizeStatus.hashCode;

  factory V1PersistentVolumeClaimStatus.fromJson(Map<String, dynamic> json) => _$V1PersistentVolumeClaimStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1PersistentVolumeClaimStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

