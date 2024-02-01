// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_horizontal_pod_autoscaler_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HorizontalPodAutoscalerStatus _$V1HorizontalPodAutoscalerStatusFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HorizontalPodAutoscalerStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['currentReplicas', 'desiredReplicas'],
        );
        final val = V1HorizontalPodAutoscalerStatus(
          currentCPUUtilizationPercentage: $checkedConvert(
              'currentCPUUtilizationPercentage', (v) => v as int?),
          currentReplicas: $checkedConvert('currentReplicas', (v) => v as int),
          desiredReplicas: $checkedConvert('desiredReplicas', (v) => v as int),
          lastScaleTime: $checkedConvert('lastScaleTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          observedGeneration:
              $checkedConvert('observedGeneration', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HorizontalPodAutoscalerStatusToJson(
    V1HorizontalPodAutoscalerStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currentCPUUtilizationPercentage',
      instance.currentCPUUtilizationPercentage);
  val['currentReplicas'] = instance.currentReplicas;
  val['desiredReplicas'] = instance.desiredReplicas;
  writeNotNull('lastScaleTime', instance.lastScaleTime?.toIso8601String());
  writeNotNull('observedGeneration', instance.observedGeneration);
  return val;
}
