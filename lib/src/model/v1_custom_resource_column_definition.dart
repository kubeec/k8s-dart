//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_column_definition.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceColumnDefinition {
  /// Returns a new [V1CustomResourceColumnDefinition] instance.
  V1CustomResourceColumnDefinition({

     this.description,

     this.format,

    required  this.jsonPath,

    required  this.name,

     this.priority,

    required  this.type,
  });

      /// description is a human readable description of this column.
  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false
  )


  final String? description;



      /// format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  @JsonKey(
    
    name: r'format',
    required: false,
    includeIfNull: false
  )


  final String? format;



      /// jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  @JsonKey(
    
    name: r'jsonPath',
    required: true,
    includeIfNull: false
  )


  final String jsonPath;



      /// name is a human readable name for the column.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false
  )


  final int? priority;



      /// type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceColumnDefinition &&
     other.description == description &&
     other.format == format &&
     other.jsonPath == jsonPath &&
     other.name == name &&
     other.priority == priority &&
     other.type == type;

  @override
  int get hashCode =>
    description.hashCode +
    format.hashCode +
    jsonPath.hashCode +
    name.hashCode +
    priority.hashCode +
    type.hashCode;

  factory V1CustomResourceColumnDefinition.fromJson(Map<String, dynamic> json) => _$V1CustomResourceColumnDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceColumnDefinitionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

