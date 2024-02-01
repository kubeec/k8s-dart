// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_failure_policy_on_exit_codes_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodFailurePolicyOnExitCodesRequirement
    _$V1PodFailurePolicyOnExitCodesRequirementFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1PodFailurePolicyOnExitCodesRequirement',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['operator', 'values'],
            );
            final val = V1PodFailurePolicyOnExitCodesRequirement(
              containerName:
                  $checkedConvert('containerName', (v) => v as String?),
              operator_: $checkedConvert('operator', (v) => v as String),
              values: $checkedConvert('values',
                  (v) => (v as List<dynamic>).map((e) => e as int).toList()),
            );
            return val;
          },
          fieldKeyMap: const {'operator_': 'operator'},
        );

Map<String, dynamic> _$V1PodFailurePolicyOnExitCodesRequirementToJson(
    V1PodFailurePolicyOnExitCodesRequirement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('containerName', instance.containerName);
  val['operator'] = instance.operator_;
  val['values'] = instance.values;
  return val;
}
