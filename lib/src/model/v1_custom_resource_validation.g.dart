// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceValidation _$V1CustomResourceValidationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceValidation',
      json,
      ($checkedConvert) {
        final val = V1CustomResourceValidation(
          openAPIV3Schema: $checkedConvert(
              'openAPIV3Schema',
              (v) => v == null
                  ? null
                  : V1JSONSchemaProps.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceValidationToJson(
    V1CustomResourceValidation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('openAPIV3Schema', instance.openAPIV3Schema?.toJson());
  return val;
}
