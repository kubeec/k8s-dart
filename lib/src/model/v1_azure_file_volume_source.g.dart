// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_azure_file_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1AzureFileVolumeSource _$V1AzureFileVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1AzureFileVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['secretName', 'shareName'],
        );
        final val = V1AzureFileVolumeSource(
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          secretName: $checkedConvert('secretName', (v) => v as String),
          shareName: $checkedConvert('shareName', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AzureFileVolumeSourceToJson(
    V1AzureFileVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('readOnly', instance.readOnly);
  val['secretName'] = instance.secretName;
  val['shareName'] = instance.shareName;
  return val;
}
