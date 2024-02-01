// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_azure_file_persistent_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1AzureFilePersistentVolumeSource _$V1AzureFilePersistentVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1AzureFilePersistentVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['secretName', 'shareName'],
        );
        final val = V1AzureFilePersistentVolumeSource(
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretName: $checkedConvert('secretName', (v) => v as String),
          secretNamespace:
              $checkedConvert('secretNamespace', (v) => v as String?),
          shareName: $checkedConvert('shareName', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AzureFilePersistentVolumeSourceToJson(
    V1AzureFilePersistentVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('readOnly', instance.readOnly);
  val['secretName'] = instance.secretName;
  writeNotNull('secretNamespace', instance.secretNamespace);
  val['shareName'] = instance.shareName;
  return val;
}
