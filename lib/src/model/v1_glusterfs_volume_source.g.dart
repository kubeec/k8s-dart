// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_glusterfs_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1GlusterfsVolumeSource _$V1GlusterfsVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1GlusterfsVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['endpoints', 'path'],
        );
        final val = V1GlusterfsVolumeSource(
          endpoints: $checkedConvert('endpoints', (v) => v as String),
          path: $checkedConvert('path', (v) => v as String),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1GlusterfsVolumeSourceToJson(
    V1GlusterfsVolumeSource instance) {
  final val = <String, dynamic>{
    'endpoints': instance.endpoints,
    'path': instance.path,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('readOnly', instance.readOnly);
  return val;
}
