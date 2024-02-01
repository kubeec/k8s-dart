// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_group_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3GroupSubject _$V1beta3GroupSubjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3GroupSubject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1beta3GroupSubject(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3GroupSubjectToJson(
        V1beta3GroupSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
