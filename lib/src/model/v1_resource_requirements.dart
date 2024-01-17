//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_resource_claim.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_requirements.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceRequirements {
  /// Returns a new [V1ResourceRequirements] instance.
  V1ResourceRequirements({

     this.claims,

     this.limits,

     this.requests,
  });

      /// Claims lists the names of resources, defined in spec.resourceClaims, that are used by this container.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable. It can only be set for containers.
  @JsonKey(
    
    name: r'claims',
    required: false,
    includeIfNull: false
  )


  final List<V1ResourceClaim>? claims;



      /// Limits describes the maximum amount of compute resources allowed. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  @JsonKey(
    
    name: r'limits',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? limits;



      /// Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. Requests cannot exceed Limits. More info: https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
  @JsonKey(
    
    name: r'requests',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? requests;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceRequirements &&
     other.claims == claims &&
     other.limits == limits &&
     other.requests == requests;

  @override
  int get hashCode =>
    claims.hashCode +
    limits.hashCode +
    requests.hashCode;

  factory V1ResourceRequirements.fromJson(Map<String, dynamic> json) => _$V1ResourceRequirementsFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceRequirementsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

