//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha2_resource_claim_scheduling_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_pod_scheduling_context_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2PodSchedulingContextStatus {
  /// Returns a new [V1alpha2PodSchedulingContextStatus] instance.
  V1alpha2PodSchedulingContextStatus({

     this.resourceClaims,
  });

      /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses \"WaitForFirstConsumer\" allocation mode.
  @JsonKey(
    
    name: r'resourceClaims',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha2ResourceClaimSchedulingStatus>? resourceClaims;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2PodSchedulingContextStatus &&
     other.resourceClaims == resourceClaims;

  @override
  int get hashCode =>
    resourceClaims.hashCode;

  factory V1alpha2PodSchedulingContextStatus.fromJson(Map<String, dynamic> json) => _$V1alpha2PodSchedulingContextStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2PodSchedulingContextStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

