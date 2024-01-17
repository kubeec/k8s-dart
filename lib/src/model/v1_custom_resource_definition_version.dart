//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_custom_resource_validation.dart';
import 'package:k8s/src/model/v1_custom_resource_column_definition.dart';
import 'package:k8s/src/model/v1_custom_resource_subresources.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_definition_version.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceDefinitionVersion {
  /// Returns a new [V1CustomResourceDefinitionVersion] instance.
  V1CustomResourceDefinitionVersion({

     this.additionalPrinterColumns,

     this.deprecated,

     this.deprecationWarning,

    required  this.name,

     this.schema,

    required  this.served,

    required  this.storage,

     this.subresources,
  });

      /// additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
  @JsonKey(
    
    name: r'additionalPrinterColumns',
    required: false,
    includeIfNull: false
  )


  final List<V1CustomResourceColumnDefinition>? additionalPrinterColumns;



      /// deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
  @JsonKey(
    
    name: r'deprecated',
    required: false,
    includeIfNull: false
  )


  final bool? deprecated;



      /// deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
  @JsonKey(
    
    name: r'deprecationWarning',
    required: false,
    includeIfNull: false
  )


  final String? deprecationWarning;



      /// name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'schema',
    required: false,
    includeIfNull: false
  )


  final V1CustomResourceValidation? schema;



      /// served is a flag enabling/disabling this version from being served via REST APIs
  @JsonKey(
    
    name: r'served',
    required: true,
    includeIfNull: false
  )


  final bool served;



      /// storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
  @JsonKey(
    
    name: r'storage',
    required: true,
    includeIfNull: false
  )


  final bool storage;



  @JsonKey(
    
    name: r'subresources',
    required: false,
    includeIfNull: false
  )


  final V1CustomResourceSubresources? subresources;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceDefinitionVersion &&
     other.additionalPrinterColumns == additionalPrinterColumns &&
     other.deprecated == deprecated &&
     other.deprecationWarning == deprecationWarning &&
     other.name == name &&
     other.schema == schema &&
     other.served == served &&
     other.storage == storage &&
     other.subresources == subresources;

  @override
  int get hashCode =>
    additionalPrinterColumns.hashCode +
    deprecated.hashCode +
    deprecationWarning.hashCode +
    name.hashCode +
    schema.hashCode +
    served.hashCode +
    storage.hashCode +
    subresources.hashCode;

  factory V1CustomResourceDefinitionVersion.fromJson(Map<String, dynamic> json) => _$V1CustomResourceDefinitionVersionFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceDefinitionVersionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

