// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_projected_volume_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ProjectedVolumeSource _$V1ProjectedVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ProjectedVolumeSource',
      json,
      ($checkedConvert) {
        final val = V1ProjectedVolumeSource(
          defaultMode: $checkedConvert('defaultMode', (v) => v as int?),
          sources: $checkedConvert(
              'sources',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1VolumeProjection.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ProjectedVolumeSourceToJson(
    V1ProjectedVolumeSource instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultMode', instance.defaultMode);
  writeNotNull('sources', instance.sources?.map((e) => e.toJson()).toList());
  return val;
}
