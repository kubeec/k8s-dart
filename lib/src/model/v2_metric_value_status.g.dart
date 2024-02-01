// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_metric_value_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2MetricValueStatus _$V2MetricValueStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2MetricValueStatus',
      json,
      ($checkedConvert) {
        final val = V2MetricValueStatus(
          averageUtilization:
              $checkedConvert('averageUtilization', (v) => v as int?),
          averageValue: $checkedConvert('averageValue', (v) => v as String?),
          value: $checkedConvert('value', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2MetricValueStatusToJson(V2MetricValueStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('averageUtilization', instance.averageUtilization);
  writeNotNull('averageValue', instance.averageValue);
  writeNotNull('value', instance.value);
  return val;
}
