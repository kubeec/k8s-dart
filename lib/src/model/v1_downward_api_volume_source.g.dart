// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_downward_api_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DownwardAPIVolumeSource _$V1DownwardAPIVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DownwardAPIVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1DownwardAPIVolumeSource(
          defaultMode: $checkedConvert('defaultMode', (v) => v as int?),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1DownwardAPIVolumeFile.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DownwardAPIVolumeSourceToJson(
    V1DownwardAPIVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultMode', instance.defaultMode);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}
