// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_http_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HTTPHeader _$V1HTTPHeaderFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HTTPHeader',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'value'],
        );
        final val = V1HTTPHeader(
          name: $checkedConvert('name', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HTTPHeaderToJson(V1HTTPHeader instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
