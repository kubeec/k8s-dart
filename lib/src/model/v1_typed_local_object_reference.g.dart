// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_typed_local_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1TypedLocalObjectReference _$V1TypedLocalObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1TypedLocalObjectReference',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'name'],
        );
        final val = V1TypedLocalObjectReference(
          apiGroup: $checkedConvert('apiGroup', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1TypedLocalObjectReferenceToJson(
    V1TypedLocalObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroup', instance.apiGroup);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  return val;
}
