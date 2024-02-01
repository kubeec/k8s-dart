// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_pods_metric_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2PodsMetricSource _$V2PodsMetricSourceFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2PodsMetricSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['metric', 'target'],
        );
        final val = V2PodsMetricSource(
          metric: $checkedConvert('metric',
              (v) => V2MetricIdentifier.fromJson(v as Map<String, dynamic>)),
          target: $checkedConvert('target',
              (v) => V2MetricTarget.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2PodsMetricSourceToJson(V2PodsMetricSource instance) =>
    <String, dynamic>{
      'metric': instance.metric.toJson(),
      'target': instance.target.toJson(),
    };
