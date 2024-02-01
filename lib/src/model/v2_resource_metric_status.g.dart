// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_resource_metric_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2ResourceMetricStatus _$V2ResourceMetricStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2ResourceMetricStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['current', 'name'],
        );
        final val = V2ResourceMetricStatus(
          current: $checkedConvert('current',
              (v) => V2MetricValueStatus.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2ResourceMetricStatusToJson(
        V2ResourceMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current.toJson(),
      'name': instance.name,
    };
