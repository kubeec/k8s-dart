// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolumeStatus _$V1PersistentVolumeStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PersistentVolumeStatus',
      json,
      ($checkedConvert) {
        final val = V1PersistentVolumeStatus(
          message: $checkedConvert('message', (v) => v as String?),
          phase: $checkedConvert('phase', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PersistentVolumeStatusToJson(
    V1PersistentVolumeStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('phase', instance.phase);
  writeNotNull('reason', instance.reason);
  return val;
}
