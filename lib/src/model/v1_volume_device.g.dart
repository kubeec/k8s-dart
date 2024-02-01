// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_volume_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1VolumeDevice _$V1VolumeDeviceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1VolumeDevice',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['devicePath', 'name'],
        );
        final val = V1VolumeDevice(
          devicePath: $checkedConvert('devicePath', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1VolumeDeviceToJson(V1VolumeDevice instance) =>
    <String, dynamic>{
      'devicePath': instance.devicePath,
      'name': instance.name,
    };
