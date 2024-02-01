// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_typed_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TypedObjectReference _$V1TypedObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TypedObjectReference',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'name'],
        );
        final val = V1TypedObjectReference(
          apiGroup: $checkedConvert('apiGroup', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          namespace: $checkedConvert('namespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TypedObjectReferenceToJson(
    V1TypedObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroup', instance.apiGroup);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  writeNotNull('namespace', instance.namespace);
  return val;
}
