// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_horizontal_pod_autoscaler_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1HorizontalPodAutoscalerSpec _$V1HorizontalPodAutoscalerSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1HorizontalPodAutoscalerSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['maxReplicas', 'scaleTargetRef'],
        );
        final val = V1HorizontalPodAutoscalerSpec(
          maxReplicas: $checkedConvert('maxReplicas', (v) => v as int),
          minReplicas: $checkedConvert('minReplicas', (v) => v as int?),
          scaleTargetRef: $checkedConvert(
              'scaleTargetRef',
              (v) => V1CrossVersionObjectReference.fromJson(
                  v as Map<String, dynamic>)),
          targetCPUUtilizationPercentage: $checkedConvert(
              'targetCPUUtilizationPercentage', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1HorizontalPodAutoscalerSpecToJson(
    V1HorizontalPodAutoscalerSpec instance) {
  final val = <String, dynamic>{
    'maxReplicas': instance.maxReplicas,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minReplicas', instance.minReplicas);
  val['scaleTargetRef'] = instance.scaleTargetRef.toJson();
  writeNotNull('targetCPUUtilizationPercentage',
      instance.targetCPUUtilizationPercentage);
  return val;
}
