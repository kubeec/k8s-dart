// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_host_path_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HostPathVolumeSource _$V1HostPathVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HostPathVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['path'],
        );
        final val = V1HostPathVolumeSource(
          path: $checkedConvert('path', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HostPathVolumeSourceToJson(
    V1HostPathVolumeSource instance) {
  final val = <String, dynamic>{
    'path': instance.path,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  return val;
}
