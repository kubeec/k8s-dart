//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_self_subject_review_status.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_self_subject_review.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1SelfSubjectReview {
  /// Returns a new [V1alpha1SelfSubjectReview] instance.
  V1alpha1SelfSubjectReview({

     this.apiVersion,

     this.kind,

     this.metadata,

     this.status,
  });

      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false
  )


  final V1alpha1SelfSubjectReviewStatus? status;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1SelfSubjectReview &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.status == status;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    metadata.hashCode +
    status.hashCode;

  factory V1alpha1SelfSubjectReview.fromJson(Map<String, dynamic> json) => _$V1alpha1SelfSubjectReviewFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1SelfSubjectReviewToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

