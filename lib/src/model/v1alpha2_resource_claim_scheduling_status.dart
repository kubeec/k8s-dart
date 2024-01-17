//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_claim_scheduling_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClaimSchedulingStatus {
  /// Returns a new [V1alpha2ResourceClaimSchedulingStatus] instance.
  V1alpha2ResourceClaimSchedulingStatus({

     this.name,

     this.unsuitableNodes,
  });

      /// Name matches the pod.spec.resourceClaims[*].Name field.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.  The size of this field is limited to 128, the same as for PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
  @JsonKey(
    
    name: r'unsuitableNodes',
    required: false,
    includeIfNull: false
  )


  final List<String>? unsuitableNodes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClaimSchedulingStatus &&
     other.name == name &&
     other.unsuitableNodes == unsuitableNodes;

  @override
  int get hashCode =>
    name.hashCode +
    unsuitableNodes.hashCode;

  factory V1alpha2ResourceClaimSchedulingStatus.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClaimSchedulingStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClaimSchedulingStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

