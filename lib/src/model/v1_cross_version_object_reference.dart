//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_cross_version_object_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CrossVersionObjectReference {
  /// Returns a new [V1CrossVersionObjectReference] instance.
  V1CrossVersionObjectReference({

     this.apiVersion,

    required  this.kind,

    required  this.name,
  });

      /// apiVersion is the API version of the referent
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CrossVersionObjectReference &&
     other.apiVersion == apiVersion &&
     other.kind == kind &&
     other.name == name;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode +
    name.hashCode;

  factory V1CrossVersionObjectReference.fromJson(Map<String, dynamic> json) => _$V1CrossVersionObjectReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1CrossVersionObjectReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

