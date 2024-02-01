// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_aws_elastic_block_store_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1AWSElasticBlockStoreVolumeSource _$V1AWSElasticBlockStoreVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1AWSElasticBlockStoreVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['volumeID'],
        );
        final val = V1AWSElasticBlockStoreVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          partition: $checkedConvert('partition', (v) => v as int?),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          volumeID: $checkedConvert('volumeID', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AWSElasticBlockStoreVolumeSourceToJson(
    V1AWSElasticBlockStoreVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  writeNotNull('partition', instance.partition);
  writeNotNull('readOnly', instance.readOnly);
  val['volumeID'] = instance.volumeID;
  return val;
}
