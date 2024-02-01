// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_object_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ObjectReference _$V1ObjectReferenceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ObjectReference',
      json,
      ($checkedConvert) {
        final val = V1ObjectReference(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          fieldPath: $checkedConvert('fieldPath', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
          resourceVersion:
              $checkedConvert('resourceVersion', (v) => v as String?),
          uid: $checkedConvert('uid', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ObjectReferenceToJson(V1ObjectReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('fieldPath', instance.fieldPath);
  writeNotNull('kind', instance.kind);
  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  writeNotNull('resourceVersion', instance.resourceVersion);
  writeNotNull('uid', instance.uid);
  return val;
}
