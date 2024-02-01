// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_priority_level_configuration_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2PriorityLevelConfigurationReference
    _$V1beta2PriorityLevelConfigurationReferenceFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1beta2PriorityLevelConfigurationReference',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['name'],
            );
            final val = V1beta2PriorityLevelConfigurationReference(
              name: $checkedConvert('name', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1beta2PriorityLevelConfigurationReferenceToJson(
        V1beta2PriorityLevelConfigurationReference instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
