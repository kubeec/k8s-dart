//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_attributes.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceAttributes {
  /// Returns a new [V1ResourceAttributes] instance.
  V1ResourceAttributes({

     this.group,

     this.name,

     this.namespace,

     this.resource,

     this.subresource,

     this.verb,

     this.version,
  });

      /// Group is the API Group of the Resource.  \"*\" means all.
  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final String? group;



      /// Name is the name of the resource being requested for a \"get\" or deleted for a \"delete\". \"\" (empty) means all.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces \"\" (empty) is defaulted for LocalSubjectAccessReviews \"\" (empty) is empty for cluster-scoped resources \"\" (empty) means \"all\" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



      /// Resource is one of the existing resource types.  \"*\" means all.
  @JsonKey(
    
    name: r'resource',
    required: false,
    includeIfNull: false
  )


  final String? resource;



      /// Subresource is one of the existing resource types.  \"\" means none.
  @JsonKey(
    
    name: r'subresource',
    required: false,
    includeIfNull: false
  )


  final String? subresource;



      /// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
  @JsonKey(
    
    name: r'verb',
    required: false,
    includeIfNull: false
  )


  final String? verb;



      /// Version is the API Version of the Resource.  \"*\" means all.
  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false
  )


  final String? version;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceAttributes &&
     other.group == group &&
     other.name == name &&
     other.namespace == namespace &&
     other.resource == resource &&
     other.subresource == subresource &&
     other.verb == verb &&
     other.version == version;

  @override
  int get hashCode =>
    group.hashCode +
    name.hashCode +
    namespace.hashCode +
    resource.hashCode +
    subresource.hashCode +
    verb.hashCode +
    version.hashCode;

  factory V1ResourceAttributes.fromJson(Map<String, dynamic> json) => _$V1ResourceAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceAttributesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

