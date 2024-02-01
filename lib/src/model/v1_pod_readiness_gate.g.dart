// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_readiness_gate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodReadinessGate _$V1PodReadinessGateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodReadinessGate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['conditionType'],
        );
        final val = V1PodReadinessGate(
          conditionType: $checkedConvert('conditionType', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodReadinessGateToJson(V1PodReadinessGate instance) =>
    <String, dynamic>{
      'conditionType': instance.conditionType,
    };
