// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_vsphere_virtual_disk_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VsphereVirtualDiskVolumeSource _$V1VsphereVirtualDiskVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VsphereVirtualDiskVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['volumePath'],
        );
        final val = V1VsphereVirtualDiskVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          storagePolicyID:
              $checkedConvert('storagePolicyID', (v) => v as String?),
          storagePolicyName:
              $checkedConvert('storagePolicyName', (v) => v as String?),
          volumePath: $checkedConvert('volumePath', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VsphereVirtualDiskVolumeSourceToJson(
    V1VsphereVirtualDiskVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('storagePolicyID', instance.storagePolicyID);
  writeNotNull('storagePolicyName', instance.storagePolicyName);
  val['volumePath'] = instance.volumePath;
  return val;
}
