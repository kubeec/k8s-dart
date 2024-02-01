// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_empty_dir_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1EmptyDirVolumeSource _$V1EmptyDirVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1EmptyDirVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1EmptyDirVolumeSource(
          medium: $checkedConvert('medium', (v) => v as String?),
          sizeLimit: $checkedConvert('sizeLimit', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1EmptyDirVolumeSourceToJson(
    V1EmptyDirVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('medium', instance.medium);
  writeNotNull('sizeLimit', instance.sizeLimit);
  return val;
}
