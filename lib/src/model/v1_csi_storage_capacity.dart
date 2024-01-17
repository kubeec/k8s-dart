//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_csi_storage_capacity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CSIStorageCapacity {
  /// Returns a new [V1CSIStorageCapacity] instance.
  V1CSIStorageCapacity({

     this.apiVersion,

     this.capacity,

     this.kind,

     this.maximumVolumeSize,

     this.metadata,

     this.nodeTopology,

    required  this.storageClassName,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// capacity is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.  The semantic is currently (CSI spec 1.2) defined as: The available capacity, in bytes, of the storage that can be used to provision volumes. If not set, that information is currently unavailable.
  @JsonKey(
    
    name: r'capacity',
    required: false,
    includeIfNull: false
  )


  final String? capacity;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// maximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse for a GetCapacityRequest with topology and parameters that match the previous fields.  This is defined since CSI spec 1.4.0 as the largest size that may be used in a CreateVolumeRequest.capacity_range.required_bytes field to create a volume with the same parameters as those in GetCapacityRequest. The corresponding value in the Kubernetes API is ResourceRequirements.Requests in a volume claim.
  @JsonKey(
    
    name: r'maximumVolumeSize',
    required: false,
    includeIfNull: false
  )


  final String? maximumVolumeSize;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



  @JsonKey(
    
    name: r'nodeTopology',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? nodeTopology;



      /// storageClassName represents the name of the StorageClass that the reported capacity applies to. It must meet the same requirements as the name of a StorageClass object (non-empty, DNS subdomain). If that object no longer exists, the CSIStorageCapacity object is obsolete and should be removed by its creator. This field is immutable.
  @JsonKey(
    
    name: r'storageClassName',
    required: true,
    includeIfNull: false
  )


  final String storageClassName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CSIStorageCapacity &&
     other.apiVersion == apiVersion &&
     other.capacity == capacity &&
     other.kind == kind &&
     other.maximumVolumeSize == maximumVolumeSize &&
     other.metadata == metadata &&
     other.nodeTopology == nodeTopology &&
     other.storageClassName == storageClassName;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    capacity.hashCode +
    kind.hashCode +
    maximumVolumeSize.hashCode +
    metadata.hashCode +
    nodeTopology.hashCode +
    storageClassName.hashCode;

  factory V1CSIStorageCapacity.fromJson(Map<String, dynamic> json) => _$V1CSIStorageCapacityFromJson(json);

  Map<String, dynamic> toJson() => _$V1CSIStorageCapacityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

