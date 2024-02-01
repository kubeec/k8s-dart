// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_csi_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CSIVolumeSource _$V1CSIVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CSIVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['driver'],
        );
        final val = V1CSIVolumeSource(
          driver: $checkedConvert('driver', (v) => v as String),
          fsType: $checkedConvert('fsType', (v) => v as String?),
          nodePublishSecretRef: $checkedConvert(
              'nodePublishSecretRef',
              (v) => v == null
                  ? null
                  : V1LocalObjectReference.fromJson(v as Map<String, dynamic>)),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          volumeAttributes: $checkedConvert(
              'volumeAttributes',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CSIVolumeSourceToJson(V1CSIVolumeSource instance) {
  final val = <String, dynamic>{
    'driver': instance.driver,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('nodePublishSecretRef', instance.nodePublishSecretRef?.toJson());
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('volumeAttributes', instance.volumeAttributes);
  return val;
}
