// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_glusterfs_persistent_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1GlusterfsPersistentVolumeSource _$V1GlusterfsPersistentVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1GlusterfsPersistentVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['endpoints', 'path'],
        );
        final val = V1GlusterfsPersistentVolumeSource(
          endpoints: $checkedConvert('endpoints', (v) => v as String),
          endpointsNamespace:
              $checkedConvert('endpointsNamespace', (v) => v as String?),
          path: $checkedConvert('path', (v) => v as String),
          readOnly: $checkedConvert('readOnly', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1GlusterfsPersistentVolumeSourceToJson(
    V1GlusterfsPersistentVolumeSource instance) {
  final val = <String, dynamic>{
    'endpoints': instance.endpoints,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('endpointsNamespace', instance.endpointsNamespace);
  val['path'] = instance.path;
  writeNotNull('readOnly', instance.readOnly);
  return val;
}
