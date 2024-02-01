// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_secret_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SecretReference _$V1SecretReferenceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SecretReference',
      json,
      ($checkedConvert) {
        final val = V1SecretReference(
          name: $checkedConvert('name', (v) => v as String?),
          namespace: $checkedConvert('namespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecretReferenceToJson(V1SecretReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('namespace', instance.namespace);
  return val;
}
