// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_sysctl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Sysctl _$V1SysctlFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Sysctl',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'value'],
        );
        final val = V1Sysctl(
          name: $checkedConvert('name', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SysctlToJson(V1Sysctl instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
