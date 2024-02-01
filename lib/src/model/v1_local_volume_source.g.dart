// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_local_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1LocalVolumeSource _$V1LocalVolumeSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1LocalVolumeSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['path'],
        );
        final val = V1LocalVolumeSource(
          fsType: $checkedConvert('fsType', (v) => v as String?),
          path: $checkedConvert('path', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1LocalVolumeSourceToJson(V1LocalVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fsType', instance.fsType);
  val['path'] = instance.path;
  return val;
}
