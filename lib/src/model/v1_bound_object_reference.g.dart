// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_bound_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1BoundObjectReference _$V1BoundObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1BoundObjectReference',
      json,
      ($checkedConvert) {
        final val = V1BoundObjectReference(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1BoundObjectReferenceToJson(
    V1BoundObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('name', instance.name);
  writeNotNull('uid', instance.uid);
  return val;
}
