// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_label_selector_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LabelSelectorRequirement _$V1LabelSelectorRequirementFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LabelSelectorRequirement',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key', 'operator'],
        );
        final val = V1LabelSelectorRequirement(
          key: $checkedConvert('key', (v) => v as String),
          operator_: $checkedConvert('operator', (v) => v as String),
          values: $checkedConvert('values',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
      fieldKeyMap: const {'operator_': 'operator'},
    );

Map<String, dynamic> _$V1LabelSelectorRequirementToJson(
    V1LabelSelectorRequirement instance) {
  final val = <String, dynamic>{
    'key': instance.key,
    'operator': instance.operator_,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values);
  return val;
}
