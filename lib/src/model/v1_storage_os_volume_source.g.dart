// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_storage_os_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StorageOSVolumeSource _$V1StorageOSVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StorageOSVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1StorageOSVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1LocalObjectReference.fromJson(v as Map<String, dynamic>)),
          volumeName: $checkedConvert('volumeName', (v) => v as String?),
          volumeNamespace:
              $checkedConvert('volumeNamespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StorageOSVolumeSourceToJson(
    V1StorageOSVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('readOnly', instance.readOnly);
  writeNotNull('secretRef', instance.secretRef?.toJson());
  writeNotNull('volumeName', instance.volumeName);
  writeNotNull('volumeNamespace', instance.volumeNamespace);
  return val;
}
