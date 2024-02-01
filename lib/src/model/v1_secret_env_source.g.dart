// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_secret_env_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1SecretEnvSource _$V1SecretEnvSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1SecretEnvSource',
      json,
      ($checkedConvert) {
        final val = V1SecretEnvSource(
          name: $checkedConvert('name', (v) => v as String?),
          optional: $checkedConvert('optional', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1SecretEnvSourceToJson(V1SecretEnvSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('optional', instance.optional);
  return val;
}
