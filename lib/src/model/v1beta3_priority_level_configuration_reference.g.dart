// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_priority_level_configuration_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3PriorityLevelConfigurationReference
    _$V1beta3PriorityLevelConfigurationReferenceFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta3PriorityLevelConfigurationReference',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['name'],
            );
            final val = V1beta3PriorityLevelConfigurationReference(
              name: $checkedConvert('name', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta3PriorityLevelConfigurationReferenceToJson(
        V1beta3PriorityLevelConfigurationReference instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
