// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_service_account_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2ServiceAccountSubject _$V1beta2ServiceAccountSubjectFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2ServiceAccountSubject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'namespace'],
        );
        final val = V1beta2ServiceAccountSubject(
          name: $checkedConvert('name', (v) => v as String),
          namespace: $checkedConvert('namespace', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2ServiceAccountSubjectToJson(
        V1beta2ServiceAccountSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
    };
