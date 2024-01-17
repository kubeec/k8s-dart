//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_claim_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ClaimSource {
  /// Returns a new [V1ClaimSource] instance.
  V1ClaimSource({

     this.resourceClaimName,

     this.resourceClaimTemplateName,
  });

      /// ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
  @JsonKey(
    
    name: r'resourceClaimName',
    required: false,
    includeIfNull: false
  )


  final String? resourceClaimName;



      /// ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same namespace as this pod.  The template will be used to create a new ResourceClaim, which will be bound to this pod. When this pod is deleted, the ResourceClaim will also be deleted. The name of the ResourceClaim will be <pod name>-<resource name>, where <resource name> is the PodResourceClaim.Name. Pod validation will reject the pod if the concatenated name is not valid for a ResourceClaim (e.g. too long).  An existing ResourceClaim with that name that is not owned by the pod will not be used for the pod to avoid using an unrelated resource by mistake. Scheduling and pod startup are then blocked until the unrelated ResourceClaim is removed.  This field is immutable and no changes will be made to the corresponding ResourceClaim by the control plane after creating the ResourceClaim.
  @JsonKey(
    
    name: r'resourceClaimTemplateName',
    required: false,
    includeIfNull: false
  )


  final String? resourceClaimTemplateName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ClaimSource &&
     other.resourceClaimName == resourceClaimName &&
     other.resourceClaimTemplateName == resourceClaimTemplateName;

  @override
  int get hashCode =>
    resourceClaimName.hashCode +
    resourceClaimTemplateName.hashCode;

  factory V1ClaimSource.fromJson(Map<String, dynamic> json) => _$V1ClaimSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ClaimSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

