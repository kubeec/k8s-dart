//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector.dart';
import 'package:k8s/src/model/v1alpha2_resource_handle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_allocation_result.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2AllocationResult {
  /// Returns a new [V1alpha2AllocationResult] instance.
  V1alpha2AllocationResult({

     this.availableOnNodes,

     this.resourceHandles,

     this.shareable,
  });

  @JsonKey(
    
    name: r'availableOnNodes',
    required: false,
    includeIfNull: false
  )


  final V1NodeSelector? availableOnNodes;



      /// ResourceHandles contain the state associated with an allocation that should be maintained throughout the lifetime of a claim. Each ResourceHandle contains data that should be passed to a specific kubelet plugin once it lands on a node. This data is returned by the driver after a successful allocation and is opaque to Kubernetes. Driver documentation may explain to users how to interpret this data if needed.  Setting this field is optional. It has a maximum size of 32 entries. If null (or empty), it is assumed this allocation will be processed by a single kubelet plugin with no ResourceHandle data attached. The name of the kubelet plugin invoked will match the DriverName set in the ResourceClaimStatus this AllocationResult is embedded in.
  @JsonKey(
    
    name: r'resourceHandles',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha2ResourceHandle>? resourceHandles;



      /// Shareable determines whether the resource supports more than one consumer at a time.
  @JsonKey(
    
    name: r'shareable',
    required: false,
    includeIfNull: false
  )


  final bool? shareable;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2AllocationResult &&
     other.availableOnNodes == availableOnNodes &&
     other.resourceHandles == resourceHandles &&
     other.shareable == shareable;

  @override
  int get hashCode =>
    availableOnNodes.hashCode +
    resourceHandles.hashCode +
    shareable.hashCode;

  factory V1alpha2AllocationResult.fromJson(Map<String, dynamic> json) => _$V1alpha2AllocationResultFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2AllocationResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

