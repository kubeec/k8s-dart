//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha2_allocation_result.dart';
import 'package:k8s/src/model/v1alpha2_resource_claim_consumer_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_claim_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClaimStatus {
  /// Returns a new [V1alpha2ResourceClaimStatus] instance.
  V1alpha2ResourceClaimStatus({

     this.allocation,

     this.deallocationRequested,

     this.driverName,

     this.reservedFor,
  });

  @JsonKey(
    
    name: r'allocation',
    required: false,
    includeIfNull: false
  )


  final V1alpha2AllocationResult? allocation;



      /// DeallocationRequested indicates that a ResourceClaim is to be deallocated.  The driver then must deallocate this claim and reset the field together with clearing the Allocation field.  While DeallocationRequested is set, no new consumers may be added to ReservedFor.
  @JsonKey(
    
    name: r'deallocationRequested',
    required: false,
    includeIfNull: false
  )


  final bool? deallocationRequested;



      /// DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  @JsonKey(
    
    name: r'driverName',
    required: false,
    includeIfNull: false
  )


  final String? driverName;



      /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.  There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  @JsonKey(
    
    name: r'reservedFor',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha2ResourceClaimConsumerReference>? reservedFor;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClaimStatus &&
     other.allocation == allocation &&
     other.deallocationRequested == deallocationRequested &&
     other.driverName == driverName &&
     other.reservedFor == reservedFor;

  @override
  int get hashCode =>
    allocation.hashCode +
    deallocationRequested.hashCode +
    driverName.hashCode +
    reservedFor.hashCode;

  factory V1alpha2ResourceClaimStatus.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClaimStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClaimStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

