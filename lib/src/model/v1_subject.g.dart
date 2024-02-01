// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1Subject _$V1SubjectFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1Subject',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['kind', 'name'],
        );
        final val = V1Subject(
          apiGroup: $checkedConvert('apiGroup', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          namespace: $checkedConvert('namespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SubjectToJson(V1Subject instance) {
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
