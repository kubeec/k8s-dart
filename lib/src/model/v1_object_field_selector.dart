//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_object_field_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ObjectFieldSelector {
  /// Returns a new [V1ObjectFieldSelector] instance.
  V1ObjectFieldSelector({

     this.apiVersion,

    required  this.fieldPath,
  });

      /// Version of the schema the FieldPath is written in terms of, defaults to \"v1\".
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Path of the field to select in the specified API version.
  @JsonKey(
    
    name: r'fieldPath',
    required: true,
    includeIfNull: false
  )


  final String fieldPath;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ObjectFieldSelector &&
     other.apiVersion == apiVersion &&
     other.fieldPath == fieldPath;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    fieldPath.hashCode;

  factory V1ObjectFieldSelector.fromJson(Map<String, dynamic> json) => _$V1ObjectFieldSelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1ObjectFieldSelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

