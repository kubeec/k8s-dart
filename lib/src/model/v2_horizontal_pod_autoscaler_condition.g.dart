// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_horizontal_pod_autoscaler_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HorizontalPodAutoscalerCondition _$V2HorizontalPodAutoscalerConditionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HorizontalPodAutoscalerCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['status', 'type'],
        );
        final val = V2HorizontalPodAutoscalerCondition(
          lastTransitionTime: $checkedConvert('lastTransitionTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String),
          type: $checkedConvert('type', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HorizontalPodAutoscalerConditionToJson(
    V2HorizontalPodAutoscalerCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'lastTransitionTime', instance.lastTransitionTime?.toIso8601String());
  writeNotNull('message', instance.message);
  writeNotNull('reason', instance.reason);
  val['status'] = instance.status;
  val['type'] = instance.type;
  return val;
}
