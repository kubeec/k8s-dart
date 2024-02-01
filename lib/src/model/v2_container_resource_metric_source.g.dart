// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_container_resource_metric_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ContainerResourceMetricSource _$V2ContainerResourceMetricSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ContainerResourceMetricSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['container', 'name', 'target'],
        );
        final val = V2ContainerResourceMetricSource(
          container: $checkedConvert('container', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          target: $checkedConvert('target',
              (v) => V2MetricTarget.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ContainerResourceMetricSourceToJson(
        V2ContainerResourceMetricSource instance) =>
    <String, dynamic>{
      'container': instance.container,
      'name': instance.name,
      'target': instance.target.toJson(),
    };
