//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_claim_consumer_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClaimConsumerReference {
  /// Returns a new [V1alpha2ResourceClaimConsumerReference] instance.
  V1alpha2ResourceClaimConsumerReference({

     this.apiGroup,

    required  this.name,

    required  this.resource,

    required  this.uid,
  });

      /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  @JsonKey(
    
    name: r'apiGroup',
    required: false,
    includeIfNull: false
  )


  final String? apiGroup;



      /// Name is the name of resource being referenced.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Resource is the type of resource being referenced, for example \"pods\".
  @JsonKey(
    
    name: r'resource',
    required: true,
    includeIfNull: false
  )


  final String resource;



      /// UID identifies exactly one incarnation of the resource.
  @JsonKey(
    
    name: r'uid',
    required: true,
    includeIfNull: false
  )


  final String uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClaimConsumerReference &&
     other.apiGroup == apiGroup &&
     other.name == name &&
     other.resource == resource &&
     other.uid == uid;

  @override
  int get hashCode =>
    apiGroup.hashCode +
    name.hashCode +
    resource.hashCode +
    uid.hashCode;

  factory V1alpha2ResourceClaimConsumerReference.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClaimConsumerReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClaimConsumerReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

