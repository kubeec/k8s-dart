// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_user_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3UserSubject _$V1beta3UserSubjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3UserSubject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1beta3UserSubject(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3UserSubjectToJson(V1beta3UserSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
