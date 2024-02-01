// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_resource_metric_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ResourceMetricSource _$V2ResourceMetricSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ResourceMetricSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name', 'target'],
        );
        final val = V2ResourceMetricSource(
          name: $checkedConvert('name', (v) => v as String),
          target: $checkedConvert('target',
              (v) => V2MetricTarget.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ResourceMetricSourceToJson(
        V2ResourceMetricSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target.toJson(),
    };
