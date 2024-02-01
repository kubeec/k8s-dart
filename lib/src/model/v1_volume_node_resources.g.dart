// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_node_resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeNodeResources _$V1VolumeNodeResourcesFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeNodeResources',
      json,
      ($checkedConvert) {
        final val = V1VolumeNodeResources(
          count: $checkedConvert('count', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeNodeResourcesToJson(
    V1VolumeNodeResources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}
