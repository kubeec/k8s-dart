// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_gce_persistent_disk_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1GCEPersistentDiskVolumeSource _$V1GCEPersistentDiskVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1GCEPersistentDiskVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['pdName'],
        );
        final val = V1GCEPersistentDiskVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          partition: $checkedConvert('partition', (v) => v as int?),
          pdName: $checkedConvert('pdName', (v) => v as String),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1GCEPersistentDiskVolumeSourceToJson(
    V1GCEPersistentDiskVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('partition', instance.partition);
  val['pdName'] = instance.pdName;
  writeNotNull('readOnly', instance.readOnly);
  return val;
}
