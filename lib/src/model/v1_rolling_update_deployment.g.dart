// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_rolling_update_deployment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RollingUpdateDeployment _$V1RollingUpdateDeploymentFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RollingUpdateDeployment',
      json,
      ($checkedConvert) {
        final val = V1RollingUpdateDeployment(
          maxSurge: $checkedConvert('maxSurge', (v) => v),
          maxUnavailable: $checkedConvert('maxUnavailable', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RollingUpdateDeploymentToJson(
    V1RollingUpdateDeployment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('maxSurge', instance.maxSurge);
  writeNotNull('maxUnavailable', instance.maxUnavailable);
  return val;
}
