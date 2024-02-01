// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_user_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2UserSubject _$V1beta2UserSubjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2UserSubject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1beta2UserSubject(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2UserSubjectToJson(V1beta2UserSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
