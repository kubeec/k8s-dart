// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_container_resource_metric_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ContainerResourceMetricStatus _$V2ContainerResourceMetricStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ContainerResourceMetricStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['container', 'current', 'name'],
        );
        final val = V2ContainerResourceMetricStatus(
          container: $checkedConvert('container', (v) => v as String),
          current: $checkedConvert('current',
              (v) => V2MetricValueStatus.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ContainerResourceMetricStatusToJson(
        V2ContainerResourceMetricStatus instance) =>
    <String, dynamic>{
      'container': instance.container,
      'current': instance.current.toJson(),
      'name': instance.name,
    };
