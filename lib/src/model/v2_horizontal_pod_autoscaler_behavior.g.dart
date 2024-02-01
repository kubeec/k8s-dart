// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_horizontal_pod_autoscaler_behavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HorizontalPodAutoscalerBehavior _$V2HorizontalPodAutoscalerBehaviorFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HorizontalPodAutoscalerBehavior',
      json,
      ($checkedConvert) {
        final val = V2HorizontalPodAutoscalerBehavior(
          scaleDown: $checkedConvert(
              'scaleDown',
              (v) => v == null
                  ? null
                  : V2HPAScalingRules.fromJson(v as Map<String, dynamic>)),
          scaleUp: $checkedConvert(
              'scaleUp',
              (v) => v == null
                  ? null
                  : V2HPAScalingRules.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HorizontalPodAutoscalerBehaviorToJson(
    V2HorizontalPodAutoscalerBehavior instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scaleDown', instance.scaleDown?.toJson());
  writeNotNull('scaleUp', instance.scaleUp?.toJson());
  return val;
}
