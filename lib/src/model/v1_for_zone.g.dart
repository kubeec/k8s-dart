// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_for_zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ForZone _$V1ForZoneFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1ForZone',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1ForZone(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ForZoneToJson(V1ForZone instance) => <String, dynamic>{
      'name': instance.name,
    };
