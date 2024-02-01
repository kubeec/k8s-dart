// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_ephemeral_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EphemeralVolumeSource _$V1EphemeralVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EphemeralVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1EphemeralVolumeSource(
          volumeClaimTemplate: $checkedConvert(
              'volumeClaimTemplate',
              (v) => v == null
                  ? null
                  : V1PersistentVolumeClaimTemplate.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EphemeralVolumeSourceToJson(
    V1EphemeralVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('volumeClaimTemplate', instance.volumeClaimTemplate?.toJson());
  return val;
}
