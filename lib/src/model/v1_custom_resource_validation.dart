//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_json_schema_props.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_validation.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceValidation {
  /// Returns a new [V1CustomResourceValidation] instance.
  V1CustomResourceValidation({

     this.openAPIV3Schema,
  });

  @JsonKey(
    
    name: r'openAPIV3Schema',
    required: false,
    includeIfNull: false
  )


  final V1JSONSchemaProps? openAPIV3Schema;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceValidation &&
     other.openAPIV3Schema == openAPIV3Schema;

  @override
  int get hashCode =>
    openAPIV3Schema.hashCode;

  factory V1CustomResourceValidation.fromJson(Map<String, dynamic> json) => _$V1CustomResourceValidationFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceValidationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

