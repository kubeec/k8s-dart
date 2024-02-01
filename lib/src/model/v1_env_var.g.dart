// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_env_var.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EnvVar _$V1EnvVarFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1EnvVar',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1EnvVar(
          name: $checkedConvert('name', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String?),
          valueFrom: $checkedConvert(
              'valueFrom',
              (v) => v == null
                  ? null
                  : V1EnvVarSource.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EnvVarToJson(V1EnvVar instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('valueFrom', instance.valueFrom?.toJson());
  return val;
}
