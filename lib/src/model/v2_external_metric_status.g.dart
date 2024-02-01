// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_external_metric_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ExternalMetricStatus _$V2ExternalMetricStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ExternalMetricStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['current', 'metric'],
        );
        final val = V2ExternalMetricStatus(
          current: $checkedConvert('current',
              (v) => V2MetricValueStatus.fromJson(v as Map<String, dynamic>)),
          metric: $checkedConvert('metric',
              (v) => V2MetricIdentifier.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ExternalMetricStatusToJson(
        V2ExternalMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'metric': instance.metric.toJson(),
    };
