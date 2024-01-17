//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_lease_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LeaseSpec {
  /// Returns a new [V1LeaseSpec] instance.
  V1LeaseSpec({

     this.acquireTime,

     this.holderIdentity,

     this.leaseDurationSeconds,

     this.leaseTransitions,

     this.renewTime,
  });

      /// acquireTime is a time when the current lease was acquired.
  @JsonKey(
    
    name: r'acquireTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? acquireTime;



      /// holderIdentity contains the identity of the holder of a current lease.
  @JsonKey(
    
    name: r'holderIdentity',
    required: false,
    includeIfNull: false
  )


  final String? holderIdentity;



      /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed renewTime.
  @JsonKey(
    
    name: r'leaseDurationSeconds',
    required: false,
    includeIfNull: false
  )


  final int? leaseDurationSeconds;



      /// leaseTransitions is the number of transitions of a lease between holders.
  @JsonKey(
    
    name: r'leaseTransitions',
    required: false,
    includeIfNull: false
  )


  final int? leaseTransitions;



      /// renewTime is a time when the current holder of a lease has last updated the lease.
  @JsonKey(
    
    name: r'renewTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? renewTime;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LeaseSpec &&
     other.acquireTime == acquireTime &&
     other.holderIdentity == holderIdentity &&
     other.leaseDurationSeconds == leaseDurationSeconds &&
     other.leaseTransitions == leaseTransitions &&
     other.renewTime == renewTime;

  @override
  int get hashCode =>
    acquireTime.hashCode +
    holderIdentity.hashCode +
    leaseDurationSeconds.hashCode +
    leaseTransitions.hashCode +
    renewTime.hashCode;

  factory V1LeaseSpec.fromJson(Map<String, dynamic> json) => _$V1LeaseSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1LeaseSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

