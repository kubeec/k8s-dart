// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_object_metric_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ObjectMetricSource _$V2ObjectMetricSourceFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ObjectMetricSource',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['describedObject', 'metric', 'target'],
        );
        final val = V2ObjectMetricSource(
          describedObject: $checkedConvert(
              'describedObject',
              (v) => V2CrossVersionObjectReference.fromJson(
                  v as Map<String, dynamic>)),
          metric: $checkedConvert('metric',
              (v) => V2MetricIdentifier.fromJson(v as Map<String, dynamic>)),
          target: $checkedConvert('target',
              (v) => V2MetricTarget.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ObjectMetricSourceToJson(
        V2ObjectMetricSource instance) =>
    <String, dynamic>{
      'describedObject': instance.describedObject.toJson(),
      'metric': instance.metric.toJson(),
      'target': instance.target.toJson(),
    };
