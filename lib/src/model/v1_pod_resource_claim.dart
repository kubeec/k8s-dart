//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_claim_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_resource_claim.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodResourceClaim {
  /// Returns a new [V1PodResourceClaim] instance.
  V1PodResourceClaim({

    required  this.name,

     this.source_,
  });

      /// Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'source',
    required: false,
    includeIfNull: false
  )


  final V1ClaimSource? source_;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodResourceClaim &&
     other.name == name &&
     other.source_ == source_;

  @override
  int get hashCode =>
    name.hashCode +
    source_.hashCode;

  factory V1PodResourceClaim.fromJson(Map<String, dynamic> json) => _$V1PodResourceClaimFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodResourceClaimToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

