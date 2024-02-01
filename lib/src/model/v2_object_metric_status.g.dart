// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_object_metric_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ObjectMetricStatus _$V2ObjectMetricStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ObjectMetricStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['current', 'describedObject', 'metric'],
        );
        final val = V2ObjectMetricStatus(
          current: $checkedConvert('current',
              (v) => V2MetricValueStatus.fromJson(v as Map<String, dynamic>)),
          describedObject: $checkedConvert(
              'describedObject',
              (v) => V2CrossVersionObjectReference.fromJson(
                  v as Map<String, dynamic>)),
          metric: $checkedConvert('metric',
              (v) => V2MetricIdentifier.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ObjectMetricStatusToJson(
        V2ObjectMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'describedObject': instance.describedObject.toJson(),
      'metric': instance.metric.toJson(),
    };
