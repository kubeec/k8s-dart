// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_disruption_budget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodDisruptionBudget _$V1PodDisruptionBudgetFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodDisruptionBudget',
      json,
      ($checkedConvert) {
        final val = V1PodDisruptionBudget(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1PodDisruptionBudgetSpec.fromJson(
                      v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1PodDisruptionBudgetStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodDisruptionBudgetToJson(
    V1PodDisruptionBudget instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  writeNotNull('status', instance.status?.toJson());
  return val;
}
