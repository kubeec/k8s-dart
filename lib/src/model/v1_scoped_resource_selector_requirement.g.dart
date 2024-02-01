// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_scoped_resource_selector_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ScopedResourceSelectorRequirement
    _$V1ScopedResourceSelectorRequirementFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'V1ScopedResourceSelectorRequirement',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['operator', 'scopeName'],
            );
            final val = V1ScopedResourceSelectorRequirement(
              operator_: $checkedConvert('operator', (v) => v as String),
              scopeName: $checkedConvert('scopeName', (v) => v as String),
              values: $checkedConvert(
                  'values',
                  (v) =>
                      (v as List<dynamic>?)?.map((e) => e as String).toList()),
            );
            return val;
          },
          fieldKeyMap: const {'operator_': 'operator'},
        );

Map<String, dynamic> _$V1ScopedResourceSelectorRequirementToJson(
    V1ScopedResourceSelectorRequirement instance) {
  final val = <String, dynamic>{
    'operator': instance.operator_,
    'scopeName': instance.scopeName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('values', instance.values);
  return val;
}
