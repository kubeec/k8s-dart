//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_definition_names.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceDefinitionNames {
  /// Returns a new [V1CustomResourceDefinitionNames] instance.
  V1CustomResourceDefinitionNames({

     this.categories,

    required  this.kind,

     this.listKind,

    required  this.plural,

     this.shortNames,

     this.singular,
  });

      /// categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
  @JsonKey(
    
    name: r'categories',
    required: false,
    includeIfNull: false
  )


  final List<String>? categories;



      /// kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



      /// listKind is the serialized kind of the list for this resource. Defaults to \"`kind`List\".
  @JsonKey(
    
    name: r'listKind',
    required: false,
    includeIfNull: false
  )


  final String? listKind;



      /// plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
  @JsonKey(
    
    name: r'plural',
    required: true,
    includeIfNull: false
  )


  final String plural;



      /// shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
  @JsonKey(
    
    name: r'shortNames',
    required: false,
    includeIfNull: false
  )


  final List<String>? shortNames;



      /// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  @JsonKey(
    
    name: r'singular',
    required: false,
    includeIfNull: false
  )


  final String? singular;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceDefinitionNames &&
     other.categories == categories &&
     other.kind == kind &&
     other.listKind == listKind &&
     other.plural == plural &&
     other.shortNames == shortNames &&
     other.singular == singular;

  @override
  int get hashCode =>
    categories.hashCode +
    kind.hashCode +
    listKind.hashCode +
    plural.hashCode +
    shortNames.hashCode +
    singular.hashCode;

  factory V1CustomResourceDefinitionNames.fromJson(Map<String, dynamic> json) => _$V1CustomResourceDefinitionNamesFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceDefinitionNamesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

