// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_config_map_env_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ConfigMapEnvSource _$V1ConfigMapEnvSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ConfigMapEnvSource',
      json,
      ($checkedConvert) {
        final val = V1ConfigMapEnvSource(
          name: $checkedConvert('name', (v) => v as String?),
          optional: $checkedConvert('optional', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ConfigMapEnvSourceToJson(
    V1ConfigMapEnvSource instance) {
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
