// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_metric_target.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2MetricTarget _$V2MetricTargetFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2MetricTarget',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['type'],
        );
        final val = V2MetricTarget(
          averageUtilization:
              $checkedConvert('averageUtilization', (v) => v as int?),
          averageValue: $checkedConvert('averageValue', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String),
          value: $checkedConvert('value', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2MetricTargetToJson(V2MetricTarget instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('averageUtilization', instance.averageUtilization);
  writeNotNull('averageValue', instance.averageValue);
  val['type'] = instance.type;
  writeNotNull('value', instance.value);
  return val;
}
