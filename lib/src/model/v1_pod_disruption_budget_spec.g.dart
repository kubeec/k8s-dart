// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_disruption_budget_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodDisruptionBudgetSpec _$V1PodDisruptionBudgetSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodDisruptionBudgetSpec',
      json,
      ($checkedConvert) {
        final val = V1PodDisruptionBudgetSpec(
          maxUnavailable: $checkedConvert('maxUnavailable', (v) => v),
          minAvailable: $checkedConvert('minAvailable', (v) => v),
          selector: $checkedConvert(
              'selector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          unhealthyPodEvictionPolicy: $checkedConvert(
              'unhealthyPodEvictionPolicy', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodDisruptionBudgetSpecToJson(
    V1PodDisruptionBudgetSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('maxUnavailable', instance.maxUnavailable);
  writeNotNull('minAvailable', instance.minAvailable);
  writeNotNull('selector', instance.selector?.toJson());
  writeNotNull(
      'unhealthyPodEvictionPolicy', instance.unhealthyPodEvictionPolicy);
  return val;
}
