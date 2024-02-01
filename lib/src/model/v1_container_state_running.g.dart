// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_state_running.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerStateRunning _$V1ContainerStateRunningFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerStateRunning',
      json,
      ($checkedConvert) {
        final val = V1ContainerStateRunning(
          startedAt: $checkedConvert('startedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerStateRunningToJson(
    V1ContainerStateRunning instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startedAt', instance.startedAt?.toIso8601String());
  return val;
}
