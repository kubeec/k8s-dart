//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_resource_attributes.dart';
import 'package:k8s/src/model/v1_non_resource_attributes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_self_subject_access_review_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SelfSubjectAccessReviewSpec {
  /// Returns a new [V1SelfSubjectAccessReviewSpec] instance.
  V1SelfSubjectAccessReviewSpec({

     this.nonResourceAttributes,

     this.resourceAttributes,
  });

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



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SelfSubjectAccessReviewSpec &&
     other.nonResourceAttributes == nonResourceAttributes &&
     other.resourceAttributes == resourceAttributes;

  @override
  int get hashCode =>
    nonResourceAttributes.hashCode +
    resourceAttributes.hashCode;

  factory V1SelfSubjectAccessReviewSpec.fromJson(Map<String, dynamic> json) => _$V1SelfSubjectAccessReviewSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1SelfSubjectAccessReviewSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

