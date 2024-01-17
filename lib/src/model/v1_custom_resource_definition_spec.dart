//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_custom_resource_definition_names.dart';
import 'package:k8s/src/model/v1_custom_resource_conversion.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_version.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_definition_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceDefinitionSpec {
  /// Returns a new [V1CustomResourceDefinitionSpec] instance.
  V1CustomResourceDefinitionSpec({

     this.conversion,

    required  this.group,

    required  this.names,

     this.preserveUnknownFields,

    required  this.scope,

    required  this.versions,
  });

  @JsonKey(
    
    name: r'conversion',
    required: false,
    includeIfNull: false
  )


  final V1CustomResourceConversion? conversion;



      /// group is the API group of the defined custom resource. The custom resources are served under `/apis/<group>/...`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  @JsonKey(
    
    name: r'group',
    required: true,
    includeIfNull: false
  )


  final String group;



  @JsonKey(
    
    name: r'names',
    required: true,
    includeIfNull: false
  )


  final V1CustomResourceDefinitionNames names;



      /// preserveUnknownFields indicates that object fields which are not specified in the OpenAPI schema should be preserved when persisting to storage. apiVersion, kind, metadata and known fields inside metadata are always preserved. This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`. See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  @JsonKey(
    
    name: r'preserveUnknownFields',
    required: false,
    includeIfNull: false
  )


  final bool? preserveUnknownFields;



      /// scope indicates whether the defined custom resource is cluster- or namespace-scoped. Allowed values are `Cluster` and `Namespaced`.
  @JsonKey(
    
    name: r'scope',
    required: true,
    includeIfNull: false
  )


  final String scope;



      /// versions is the list of all API versions of the defined custom resource. Version names are used to compute the order in which served versions are listed in API discovery. If the version string is \"kube-like\", it will sort above non \"kube-like\" version strings, which are ordered lexicographically. \"Kube-like\" versions start with a \"v\", then are followed by a number (the major version), then optionally the string \"alpha\" or \"beta\" and another number (the minor version). These are sorted first by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major version, then minor version. An example sorted list of versions: v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  @JsonKey(
    
    name: r'versions',
    required: true,
    includeIfNull: false
  )


  final List<V1CustomResourceDefinitionVersion> versions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceDefinitionSpec &&
     other.conversion == conversion &&
     other.group == group &&
     other.names == names &&
     other.preserveUnknownFields == preserveUnknownFields &&
     other.scope == scope &&
     other.versions == versions;

  @override
  int get hashCode =>
    conversion.hashCode +
    group.hashCode +
    names.hashCode +
    preserveUnknownFields.hashCode +
    scope.hashCode +
    versions.hashCode;

  factory V1CustomResourceDefinitionSpec.fromJson(Map<String, dynamic> json) => _$V1CustomResourceDefinitionSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceDefinitionSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

