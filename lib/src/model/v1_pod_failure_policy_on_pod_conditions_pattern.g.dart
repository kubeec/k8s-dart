// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_failure_policy_on_pod_conditions_pattern.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodFailurePolicyOnPodConditionsPattern
    _$V1PodFailurePolicyOnPodConditionsPatternFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1PodFailurePolicyOnPodConditionsPattern',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['status', 'type'],
            );
            final val = V1PodFailurePolicyOnPodConditionsPattern(
              status: $checkedConvert('status', (v) => v as String),
              type: $checkedConvert('type', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1PodFailurePolicyOnPodConditionsPatternToJson(
        V1PodFailurePolicyOnPodConditionsPattern instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
    };
