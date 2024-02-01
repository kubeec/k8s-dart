// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume_claim_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolumeClaimStatus _$V1PersistentVolumeClaimStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PersistentVolumeClaimStatus',
      json,
      ($checkedConvert) {
        final val = V1PersistentVolumeClaimStatus(
          accessModes: $checkedConvert('accessModes',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          allocatedResources: $checkedConvert(
              'allocatedResources',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          capacity: $checkedConvert(
              'capacity',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PersistentVolumeClaimCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          phase: $checkedConvert('phase', (v) => v as String?),
          resizeStatus: $checkedConvert('resizeStatus', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PersistentVolumeClaimStatusToJson(
    V1PersistentVolumeClaimStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accessModes', instance.accessModes);
  writeNotNull('allocatedResources', instance.allocatedResources);
  writeNotNull('capacity', instance.capacity);
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('phase', instance.phase);
  writeNotNull('resizeStatus', instance.resizeStatus);
  return val;
}
