// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_pods_metric_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2PodsMetricStatus _$V2PodsMetricStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2PodsMetricStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['current', 'metric'],
        );
        final val = V2PodsMetricStatus(
          current: $checkedConvert('current',
              (v) => V2MetricValueStatus.fromJson(v as Map<String, dynamic>)),
          metric: $checkedConvert('metric',
              (v) => V2MetricIdentifier.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2PodsMetricStatusToJson(V2PodsMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'metric': instance.metric.toJson(),
    };
