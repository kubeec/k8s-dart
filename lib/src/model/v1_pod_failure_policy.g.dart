// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_failure_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodFailurePolicy _$V1PodFailurePolicyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodFailurePolicy',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['rules'],
        );
        final val = V1PodFailurePolicy(
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>)
                  .map((e) => V1PodFailurePolicyRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodFailurePolicyToJson(V1PodFailurePolicy instance) =>
    <String, dynamic>{
      'rules': instance.rules.map((e) => e.toJson()).toList(),
    };
