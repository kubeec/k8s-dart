// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_scheduling_gate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodSchedulingGate _$V1PodSchedulingGateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodSchedulingGate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = V1PodSchedulingGate(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodSchedulingGateToJson(
        V1PodSchedulingGate instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
