// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceAttributes _$V1ResourceAttributesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceAttributes',
      json,
      ($checkedConvert) {
        final val = V1ResourceAttributes(
          group: $checkedConvert('group', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
          resource: $checkedConvert('resource', (v) => v as String?),
          subresource: $checkedConvert('subresource', (v) => v as String?),
          verb: $checkedConvert('verb', (v) => v as String?),
          version: $checkedConvert('version', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ResourceAttributesToJson(
    V1ResourceAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('resource', instance.resource);
  writeNotNull('subresource', instance.subresource);
  writeNotNull('verb', instance.verb);
  writeNotNull('version', instance.version);
  return val;
}
