//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_class_parameters_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClassParametersReference {
  /// Returns a new [V1alpha2ResourceClassParametersReference] instance.
  V1alpha2ResourceClassParametersReference({

     this.apiGroup,

    required  this.kind,

    required  this.name,

     this.namespace,
  });

      /// APIGroup is the group for the resource being referenced. It is empty for the core API. This matches the group in the APIVersion that is used when creating the resources.
  @JsonKey(
    
    name: r'apiGroup',
    required: false,
    includeIfNull: false
  )


  final String? apiGroup;



      /// Kind is the type of resource being referenced. This is the same value as in the parameter object's metadata.
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// Name is the name of resource being referenced.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// Namespace that contains the referenced resource. Must be empty for cluster-scoped resources and non-empty for namespaced resources.
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClassParametersReference &&
     other.apiGroup == apiGroup &&
     other.kind == kind &&
     other.name == name &&
     other.namespace == namespace;

  @override
  int get hashCode =>
    apiGroup.hashCode +
    kind.hashCode +
    name.hashCode +
    namespace.hashCode;

  factory V1alpha2ResourceClassParametersReference.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClassParametersReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClassParametersReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

