// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_photon_persistent_disk_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PhotonPersistentDiskVolumeSource _$V1PhotonPersistentDiskVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PhotonPersistentDiskVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['pdID'],
        );
        final val = V1PhotonPersistentDiskVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          pdID: $checkedConvert('pdID', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PhotonPersistentDiskVolumeSourceToJson(
    V1PhotonPersistentDiskVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  val['pdID'] = instance.pdID;
  return val;
}
