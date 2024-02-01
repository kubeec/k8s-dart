// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_attached_volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1AttachedVolume _$V1AttachedVolumeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1AttachedVolume',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['devicePath', 'name'],
        );
        final val = V1AttachedVolume(
          devicePath: $checkedConvert('devicePath', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AttachedVolumeToJson(V1AttachedVolume instance) =>
    <String, dynamic>{
      'devicePath': instance.devicePath,
      'name': instance.name,
    };
