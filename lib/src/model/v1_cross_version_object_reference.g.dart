// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cross_version_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CrossVersionObjectReference _$V1CrossVersionObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CrossVersionObjectReference',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'name'],
        );
        final val = V1CrossVersionObjectReference(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CrossVersionObjectReferenceToJson(
    V1CrossVersionObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  return val;
}
