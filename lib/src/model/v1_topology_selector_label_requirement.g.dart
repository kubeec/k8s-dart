// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_topology_selector_label_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TopologySelectorLabelRequirement _$V1TopologySelectorLabelRequirementFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TopologySelectorLabelRequirement',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key', 'values'],
        );
        final val = V1TopologySelectorLabelRequirement(
          key: $checkedConvert('key', (v) => v as String),
          values: $checkedConvert('values',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TopologySelectorLabelRequirementToJson(
        V1TopologySelectorLabelRequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'values': instance.values,
    };
