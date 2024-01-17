//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_class_parameters_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressClassParametersReference {
  /// Returns a new [V1IngressClassParametersReference] instance.
  V1IngressClassParametersReference({

     this.apiGroup,

    required  this.kind,

    required  this.name,

     this.namespace,

     this.scope,
  });

      /// apiGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  @JsonKey(
    
    name: r'apiGroup',
    required: false,
    includeIfNull: false
  )


  final String? apiGroup;



      /// kind is the type of resource being referenced.
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// name is the name of resource being referenced.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// namespace is the namespace of the resource being referenced. This field is required when scope is set to \"Namespace\" and must be unset when scope is set to \"Cluster\".
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



      /// scope represents if this refers to a cluster or namespace scoped resource. This may be set to \"Cluster\" (default) or \"Namespace\".
  @JsonKey(
    
    name: r'scope',
    required: false,
    includeIfNull: false
  )


  final String? scope;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressClassParametersReference &&
     other.apiGroup == apiGroup &&
     other.kind == kind &&
     other.name == name &&
     other.namespace == namespace &&
     other.scope == scope;

  @override
  int get hashCode =>
    apiGroup.hashCode +
    kind.hashCode +
    name.hashCode +
    namespace.hashCode +
    scope.hashCode;

  factory V1IngressClassParametersReference.fromJson(Map<String, dynamic> json) => _$V1IngressClassParametersReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressClassParametersReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

