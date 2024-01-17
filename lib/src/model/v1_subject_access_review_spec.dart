//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_resource_attributes.dart';
import 'package:k8s/src/model/v1_non_resource_attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_subject_access_review_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SubjectAccessReviewSpec {
  /// Returns a new [V1SubjectAccessReviewSpec] instance.
  V1SubjectAccessReviewSpec({

     this.extra,

     this.groups,

     this.nonResourceAttributes,

     this.resourceAttributes,

     this.uid,

     this.user,
  });

      /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer it needs a reflection here.
  @JsonKey(
    
    name: r'extra',
    required: false,
    includeIfNull: false
  )


  final Map<String, List<String>>? extra;



      /// Groups is the groups you're testing for.
  @JsonKey(
    
    name: r'groups',
    required: false,
    includeIfNull: false
  )


  final List<String>? groups;



  @JsonKey(
    
    name: r'nonResourceAttributes',
    required: false,
    includeIfNull: false
  )


  final V1NonResourceAttributes? nonResourceAttributes;



  @JsonKey(
    
    name: r'resourceAttributes',
    required: false,
    includeIfNull: false
  )


  final V1ResourceAttributes? resourceAttributes;



      /// UID information about the requesting user.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



      /// User is the user you're testing for. If you specify \"User\" but not \"Groups\", then is it interpreted as \"What if User were not a member of any groups
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final String? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SubjectAccessReviewSpec &&
     other.extra == extra &&
     other.groups == groups &&
     other.nonResourceAttributes == nonResourceAttributes &&
     other.resourceAttributes == resourceAttributes &&
     other.uid == uid &&
     other.user == user;

  @override
  int get hashCode =>
    extra.hashCode +
    groups.hashCode +
    nonResourceAttributes.hashCode +
    resourceAttributes.hashCode +
    uid.hashCode +
    user.hashCode;

  factory V1SubjectAccessReviewSpec.fromJson(Map<String, dynamic> json) => _$V1SubjectAccessReviewSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1SubjectAccessReviewSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

