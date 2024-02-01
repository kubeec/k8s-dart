// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_service_account_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3ServiceAccountSubject _$V1beta3ServiceAccountSubjectFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3ServiceAccountSubject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'namespace'],
        );
        final val = V1beta3ServiceAccountSubject(
          name: $checkedConvert('name', (v) => v as String),
          namespace: $checkedConvert('namespace', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3ServiceAccountSubjectToJson(
        V1beta3ServiceAccountSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
    };
