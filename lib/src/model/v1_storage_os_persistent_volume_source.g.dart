// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_storage_os_persistent_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StorageOSPersistentVolumeSource _$V1StorageOSPersistentVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StorageOSPersistentVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1StorageOSPersistentVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretRef: $checkedConvert(
              'secretRef',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          volumeName: $checkedConvert('volumeName', (v) => v as String?),
          volumeNamespace:
              $checkedConvert('volumeNamespace', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StorageOSPersistentVolumeSourceToJson(
    V1StorageOSPersistentVolumeSource instance) {
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
