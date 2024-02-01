// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_external_metric_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ExternalMetricSource _$V2ExternalMetricSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ExternalMetricSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['metric', 'target'],
        );
        final val = V2ExternalMetricSource(
          metric: $checkedConvert('metric',
              (v) => V2MetricIdentifier.fromJson(v as Map<String, dynamic>)),
          target: $checkedConvert('target',
              (v) => V2MetricTarget.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ExternalMetricSourceToJson(
        V2ExternalMetricSource instance) =>
    <String, dynamic>{
      'metric': instance.metric.toJson(),
      'target': instance.target.toJson(),
    };
