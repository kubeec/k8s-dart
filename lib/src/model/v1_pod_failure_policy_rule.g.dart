// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_pod_failure_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PodFailurePolicyRule _$V1PodFailurePolicyRuleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PodFailurePolicyRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['action', 'onPodConditions'],
        );
        final val = V1PodFailurePolicyRule(
          action: $checkedConvert('action', (v) => v as String),
          onExitCodes: $checkedConvert(
              'onExitCodes',
              (v) => v == null
                  ? null
                  : V1PodFailurePolicyOnExitCodesRequirement.fromJson(
                      v as Map<String, dynamic>)),
          onPodConditions: $checkedConvert(
              'onPodConditions',
              (v) => (v as List<dynamic>)
                  .map((e) => V1PodFailurePolicyOnPodConditionsPattern.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PodFailurePolicyRuleToJson(
    V1PodFailurePolicyRule instance) {
  final val = <String, dynamic>{
    'action': instance.action,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('onExitCodes', instance.onExitCodes?.toJson());
  val['onPodConditions'] =
      instance.onPodConditions.map((e) => e.toJson()).toList();
  return val;
}
