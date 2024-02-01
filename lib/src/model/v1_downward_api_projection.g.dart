// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_downward_api_projection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DownwardAPIProjection _$V1DownwardAPIProjectionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DownwardAPIProjection',
      json,
      ($checkedConvert) {
        final val = V1DownwardAPIProjection(
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

Map<String, dynamic> _$V1DownwardAPIProjectionToJson(
    V1DownwardAPIProjection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  return val;
}
