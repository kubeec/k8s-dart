// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_horizontal_pod_autoscaler_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HorizontalPodAutoscalerSpec _$V2HorizontalPodAutoscalerSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HorizontalPodAutoscalerSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['maxReplicas', 'scaleTargetRef'],
        );
        final val = V2HorizontalPodAutoscalerSpec(
          behavior: $checkedConvert(
              'behavior',
              (v) => v == null
                  ? null
                  : V2HorizontalPodAutoscalerBehavior.fromJson(
                      v as Map<String, dynamic>)),
          maxReplicas: $checkedConvert('maxReplicas', (v) => v as int),
          metrics: $checkedConvert(
              'metrics',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V2MetricSpec.fromJson(e as Map<String, dynamic>))
                  .toList()),
          minReplicas: $checkedConvert('minReplicas', (v) => v as int?),
          scaleTargetRef: $checkedConvert(
              'scaleTargetRef',
              (v) => V2CrossVersionObjectReference.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HorizontalPodAutoscalerSpecToJson(
    V2HorizontalPodAutoscalerSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('behavior', instance.behavior?.toJson());
  val['maxReplicas'] = instance.maxReplicas;
  writeNotNull('metrics', instance.metrics?.map((e) => e.toJson()).toList());
  writeNotNull('minReplicas', instance.minReplicas);
  val['scaleTargetRef'] = instance.scaleTargetRef.toJson();
  return val;
}
