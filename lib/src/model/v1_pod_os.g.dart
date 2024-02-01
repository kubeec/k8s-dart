// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_os.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodOS _$V1PodOSFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1PodOS',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1PodOS(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodOSToJson(V1PodOS instance) => <String, dynamic>{
      'name': instance.name,
    };
