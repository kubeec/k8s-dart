// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_state_terminated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerStateTerminated _$V1ContainerStateTerminatedFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerStateTerminated',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['exitCode'],
        );
        final val = V1ContainerStateTerminated(
          containerID: $checkedConvert('containerID', (v) => v as String?),
          exitCode: $checkedConvert('exitCode', (v) => v as int),
          finishedAt: $checkedConvert('finishedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          signal: $checkedConvert('signal', (v) => v as int?),
          startedAt: $checkedConvert('startedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerStateTerminatedToJson(
    V1ContainerStateTerminated instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('containerID', instance.containerID);
  val['exitCode'] = instance.exitCode;
  writeNotNull('finishedAt', instance.finishedAt?.toIso8601String());
  writeNotNull('message', instance.message);
  writeNotNull('reason', instance.reason);
  writeNotNull('signal', instance.signal);
  writeNotNull('startedAt', instance.startedAt?.toIso8601String());
  return val;
}
