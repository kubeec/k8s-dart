// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_env_var_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EnvVarSource _$V1EnvVarSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EnvVarSource',
      json,
      ($checkedConvert) {
        final val = V1EnvVarSource(
          configMapKeyRef: $checkedConvert(
              'configMapKeyRef',
              (v) => v == null
                  ? null
                  : V1ConfigMapKeySelector.fromJson(v as Map<String, dynamic>)),
          fieldRef: $checkedConvert(
              'fieldRef',
              (v) => v == null
                  ? null
                  : V1ObjectFieldSelector.fromJson(v as Map<String, dynamic>)),
          resourceFieldRef: $checkedConvert(
              'resourceFieldRef',
              (v) => v == null
                  ? null
                  : V1ResourceFieldSelector.fromJson(
                      v as Map<String, dynamic>)),
          secretKeyRef: $checkedConvert(
              'secretKeyRef',
              (v) => v == null
                  ? null
                  : V1SecretKeySelector.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EnvVarSourceToJson(V1EnvVarSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('configMapKeyRef', instance.configMapKeyRef?.toJson());
  writeNotNull('fieldRef', instance.fieldRef?.toJson());
  writeNotNull('resourceFieldRef', instance.resourceFieldRef?.toJson());
  writeNotNull('secretKeyRef', instance.secretKeyRef?.toJson());
  return val;
}
