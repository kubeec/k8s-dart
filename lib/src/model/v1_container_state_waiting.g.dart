// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_state_waiting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerStateWaiting _$V1ContainerStateWaitingFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerStateWaiting',
      json,
      ($checkedConvert) {
        final val = V1ContainerStateWaiting(
          message: $checkedConvert('message', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerStateWaitingToJson(
    V1ContainerStateWaiting instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('reason', instance.reason);
  return val;
}
