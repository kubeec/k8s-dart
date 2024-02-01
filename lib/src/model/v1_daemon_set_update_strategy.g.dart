// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_daemon_set_update_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DaemonSetUpdateStrategy _$V1DaemonSetUpdateStrategyFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DaemonSetUpdateStrategy',
      json,
      ($checkedConvert) {
        final val = V1DaemonSetUpdateStrategy(
          rollingUpdate: $checkedConvert(
              'rollingUpdate',
              (v) => v == null
                  ? null
                  : V1RollingUpdateDaemonSet.fromJson(
                      v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DaemonSetUpdateStrategyToJson(
    V1DaemonSetUpdateStrategy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rollingUpdate', instance.rollingUpdate?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
