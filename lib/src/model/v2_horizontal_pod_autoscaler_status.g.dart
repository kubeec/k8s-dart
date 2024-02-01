// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_horizontal_pod_autoscaler_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HorizontalPodAutoscalerStatus _$V2HorizontalPodAutoscalerStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HorizontalPodAutoscalerStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['desiredReplicas'],
        );
        final val = V2HorizontalPodAutoscalerStatus(
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V2HorizontalPodAutoscalerCondition.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          currentMetrics: $checkedConvert(
              'currentMetrics',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V2MetricStatus.fromJson(e as Map<String, dynamic>))
                  .toList()),
          currentReplicas: $checkedConvert('currentReplicas', (v) => v as int?),
          desiredReplicas: $checkedConvert('desiredReplicas', (v) => v as int),
          lastScaleTime: $checkedConvert('lastScaleTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HorizontalPodAutoscalerStatusToJson(
    V2HorizontalPodAutoscalerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('currentMetrics',
      instance.currentMetrics?.map((e) => e.toJson()).toList());
  writeNotNull('currentReplicas', instance.currentReplicas);
  val['desiredReplicas'] = instance.desiredReplicas;
  writeNotNull('lastScaleTime', instance.lastScaleTime?.toIso8601String());
  writeNotNull('observedGeneration', instance.observedGeneration);
  return val;
}
