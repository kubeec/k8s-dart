// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_cross_version_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2CrossVersionObjectReference _$V2CrossVersionObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2CrossVersionObjectReference',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'name'],
        );
        final val = V2CrossVersionObjectReference(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2CrossVersionObjectReferenceToJson(
    V2CrossVersionObjectReference instance) {
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
