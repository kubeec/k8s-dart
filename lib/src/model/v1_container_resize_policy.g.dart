// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_container_resize_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ContainerResizePolicy _$V1ContainerResizePolicyFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ContainerResizePolicy',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['resourceName', 'restartPolicy'],
        );
        final val = V1ContainerResizePolicy(
          resourceName: $checkedConvert('resourceName', (v) => v as String),
          restartPolicy: $checkedConvert('restartPolicy', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ContainerResizePolicyToJson(
        V1ContainerResizePolicy instance) =>
    <String, dynamic>{
      'resourceName': instance.resourceName,
      'restartPolicy': instance.restartPolicy,
    };
