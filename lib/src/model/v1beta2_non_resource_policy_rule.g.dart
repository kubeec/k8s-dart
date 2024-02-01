// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_non_resource_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2NonResourcePolicyRule _$V1beta2NonResourcePolicyRuleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2NonResourcePolicyRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['nonResourceURLs', 'verbs'],
        );
        final val = V1beta2NonResourcePolicyRule(
          nonResourceURLs: $checkedConvert('nonResourceURLs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          verbs: $checkedConvert('verbs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2NonResourcePolicyRuleToJson(
        V1beta2NonResourcePolicyRule instance) =>
    <String, dynamic>{
      'nonResourceURLs': instance.nonResourceURLs,
      'verbs': instance.verbs,
    };
