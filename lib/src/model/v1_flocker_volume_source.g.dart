// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_flocker_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1FlockerVolumeSource _$V1FlockerVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1FlockerVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1FlockerVolumeSource(
          datasetName: $checkedConvert('datasetName', (v) => v as String?),
          datasetUUID: $checkedConvert('datasetUUID', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1FlockerVolumeSourceToJson(
    V1FlockerVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('datasetName', instance.datasetName);
  writeNotNull('datasetUUID', instance.datasetUUID);
  return val;
}
