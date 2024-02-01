// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_stateful_set_persistent_volume_claim_retention_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatefulSetPersistentVolumeClaimRetentionPolicy
    _$V1StatefulSetPersistentVolumeClaimRetentionPolicyFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1StatefulSetPersistentVolumeClaimRetentionPolicy',
          json,
          ($checkedConvert) {
            final val = V1StatefulSetPersistentVolumeClaimRetentionPolicy(
              whenDeleted: $checkedConvert('whenDeleted', (v) => v as String?),
              whenScaled: $checkedConvert('whenScaled', (v) => v as String?),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1StatefulSetPersistentVolumeClaimRetentionPolicyToJson(
    V1StatefulSetPersistentVolumeClaimRetentionPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('whenDeleted', instance.whenDeleted);
  writeNotNull('whenScaled', instance.whenScaled);
  return val;
}
