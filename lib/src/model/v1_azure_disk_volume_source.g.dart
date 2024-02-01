// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_azure_disk_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1AzureDiskVolumeSource _$V1AzureDiskVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1AzureDiskVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['diskName', 'diskURI'],
        );
        final val = V1AzureDiskVolumeSource(
          cachingMode: $checkedConvert('cachingMode', (v) => v as String?),
          diskName: $checkedConvert('diskName', (v) => v as String),
          diskURI: $checkedConvert('diskURI', (v) => v as String),
          fsType: $checkedConvert('fsType', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AzureDiskVolumeSourceToJson(
    V1AzureDiskVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cachingMode', instance.cachingMode);
  val['diskName'] = instance.diskName;
  val['diskURI'] = instance.diskURI;
  writeNotNull('fsType', instance.fsType);
  writeNotNull('kind', instance.kind);
  writeNotNull('readOnly', instance.readOnly);
  return val;
}
