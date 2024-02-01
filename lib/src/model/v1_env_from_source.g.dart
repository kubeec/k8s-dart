// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_env_from_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EnvFromSource _$V1EnvFromSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EnvFromSource',
      json,
      ($checkedConvert) {
        final val = V1EnvFromSource(
          configMapRef: $checkedConvert(
              'configMapRef',
              (v) => v == null
                  ? null
                  : V1ConfigMapEnvSource.fromJson(v as Map<String, dynamic>)),
          prefix: $checkedConvert('prefix', (v) => v as String?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1SecretEnvSource.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EnvFromSourceToJson(V1EnvFromSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('configMapRef', instance.configMapRef?.toJson());
  writeNotNull('prefix', instance.prefix);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  return val;
}
