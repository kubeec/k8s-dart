// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_downward_api_volume_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DownwardAPIVolumeFile _$V1DownwardAPIVolumeFileFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DownwardAPIVolumeFile',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['path'],
        );
        final val = V1DownwardAPIVolumeFile(
          fieldRef: $checkedConvert(
              'fieldRef',
              (v) => v == null
                  ? null
                  : V1ObjectFieldSelector.fromJson(v as Map<String, dynamic>)),
          mode: $checkedConvert('mode', (v) => v as int?),
          path: $checkedConvert('path', (v) => v as String),
          resourceFieldRef: $checkedConvert(
              'resourceFieldRef',
              (v) => v == null
                  ? null
                  : V1ResourceFieldSelector.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DownwardAPIVolumeFileToJson(
    V1DownwardAPIVolumeFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldRef', instance.fieldRef?.toJson());
  writeNotNull('mode', instance.mode);
  val['path'] = instance.path;
  writeNotNull('resourceFieldRef', instance.resourceFieldRef?.toJson());
  return val;
}
