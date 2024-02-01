// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume_claim_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolumeClaimVolumeSource
    _$V1PersistentVolumeClaimVolumeSourceFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          'V1PersistentVolumeClaimVolumeSource',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['claimName'],
            );
            final val = V1PersistentVolumeClaimVolumeSource(
              claimName: $checkedConvert('claimName', (v) => v as String),
              readOnly: $checkedConvert('readOnly', (v) => v as bool?),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1PersistentVolumeClaimVolumeSourceToJson(
    V1PersistentVolumeClaimVolumeSource instance) {
  final val = <String, dynamic>{
    'claimName': instance.claimName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('readOnly', instance.readOnly);
  return val;
}
