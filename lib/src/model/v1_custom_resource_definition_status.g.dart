// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_resource_definition_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CustomResourceDefinitionStatus _$V1CustomResourceDefinitionStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CustomResourceDefinitionStatus',
      json,
      ($checkedConvert) {
        final val = V1CustomResourceDefinitionStatus(
          acceptedNames: $checkedConvert(
              'acceptedNames',
              (v) => v == null
                  ? null
                  : V1CustomResourceDefinitionNames.fromJson(
                      v as Map<String, dynamic>)),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1CustomResourceDefinitionCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          storedVersions: $checkedConvert('storedVersions',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CustomResourceDefinitionStatusToJson(
    V1CustomResourceDefinitionStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('acceptedNames', instance.acceptedNames?.toJson());
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('storedVersions', instance.storedVersions);
  return val;
}
