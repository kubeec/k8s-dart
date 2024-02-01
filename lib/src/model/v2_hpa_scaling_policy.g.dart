// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_hpa_scaling_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HPAScalingPolicy _$V2HPAScalingPolicyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HPAScalingPolicy',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['periodSeconds', 'type', 'value'],
        );
        final val = V2HPAScalingPolicy(
          periodSeconds: $checkedConvert('periodSeconds', (v) => v as int),
          type: $checkedConvert('type', (v) => v as String),
          value: $checkedConvert('value', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HPAScalingPolicyToJson(V2HPAScalingPolicy instance) =>
    <String, dynamic>{
      'periodSeconds': instance.periodSeconds,
      'type': instance.type,
      'value': instance.value,
    };
