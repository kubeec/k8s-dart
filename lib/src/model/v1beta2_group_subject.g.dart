// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_group_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2GroupSubject _$V1beta2GroupSubjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2GroupSubject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1beta2GroupSubject(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2GroupSubjectToJson(
        V1beta2GroupSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
