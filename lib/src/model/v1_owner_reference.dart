//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_owner_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1OwnerReference {
  /// Returns a new [V1OwnerReference] instance.
  V1OwnerReference({

    required  this.apiVersion,

     this.blockOwnerDeletion,

     this.controller,

    required  this.kind,

    required  this.name,

    required  this.uid,
  });

      /// API version of the referent.
  @JsonKey(
    
    name: r'apiVersion',
    required: true,
    includeIfNull: false
  )


  final String apiVersion;



      /// If true, AND if the owner has the \"foregroundDeletion\" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs \"delete\" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  @JsonKey(
    
    name: r'blockOwnerDeletion',
    required: false,
    includeIfNull: false
  )


  final bool? blockOwnerDeletion;



      /// If true, this reference points to the managing controller.
  @JsonKey(
    
    name: r'controller',
    required: false,
    includeIfNull: false
  )


  final bool? controller;



      /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  @JsonKey(
    
    name: r'uid',
    required: true,
    includeIfNull: false
  )


  final String uid;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1OwnerReference &&
     other.apiVersion == apiVersion &&
     other.blockOwnerDeletion == blockOwnerDeletion &&
     other.controller == controller &&
     other.kind == kind &&
     other.name == name &&
     other.uid == uid;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    blockOwnerDeletion.hashCode +
    controller.hashCode +
    kind.hashCode +
    name.hashCode +
    uid.hashCode;

  factory V1OwnerReference.fromJson(Map<String, dynamic> json) => _$V1OwnerReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1OwnerReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

