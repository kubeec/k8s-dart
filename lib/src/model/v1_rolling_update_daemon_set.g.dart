// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_rolling_update_daemon_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1RollingUpdateDaemonSet _$V1RollingUpdateDaemonSetFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1RollingUpdateDaemonSet',
      json,
      ($checkedConvert) {
        final val = V1RollingUpdateDaemonSet(
          maxSurge: $checkedConvert('maxSurge', (v) => v),
          maxUnavailable: $checkedConvert('maxUnavailable', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1RollingUpdateDaemonSetToJson(
    V1RollingUpdateDaemonSet instance) {
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
