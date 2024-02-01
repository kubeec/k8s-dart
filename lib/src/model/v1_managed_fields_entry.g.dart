// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_managed_fields_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ManagedFieldsEntry _$V1ManagedFieldsEntryFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ManagedFieldsEntry',
      json,
      ($checkedConvert) {
        final val = V1ManagedFieldsEntry(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          fieldsType: $checkedConvert('fieldsType', (v) => v as String?),
          fieldsV1: $checkedConvert('fieldsV1', (v) => v),
          manager: $checkedConvert('manager', (v) => v as String?),
          operation: $checkedConvert('operation', (v) => v as String?),
          subresource: $checkedConvert('subresource', (v) => v as String?),
          time: $checkedConvert(
              'time', (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ManagedFieldsEntryToJson(
    V1ManagedFieldsEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('fieldsType', instance.fieldsType);
  writeNotNull('fieldsV1', instance.fieldsV1);
  writeNotNull('manager', instance.manager);
  writeNotNull('operation', instance.operation);
  writeNotNull('subresource', instance.subresource);
  writeNotNull('time', instance.time?.toIso8601String());
  return val;
}
