// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_nfs_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NFSVolumeSource _$V1NFSVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NFSVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['path', 'server'],
        );
        final val = V1NFSVolumeSource(
          path: $checkedConvert('path', (v) => v as String),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
          server: $checkedConvert('server', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NFSVolumeSourceToJson(V1NFSVolumeSource instance) {
  final val = <String, dynamic>{
    'path': instance.path,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('readOnly', instance.readOnly);
  val['server'] = instance.server;
  return val;
}
