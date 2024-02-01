// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_policy_rules_with_subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2PolicyRulesWithSubjects _$V1beta2PolicyRulesWithSubjectsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2PolicyRulesWithSubjects',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['subjects'],
        );
        final val = V1beta2PolicyRulesWithSubjects(
          nonResourceRules: $checkedConvert(
              'nonResourceRules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta2NonResourcePolicyRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          resourceRules: $checkedConvert(
              'resourceRules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta2ResourcePolicyRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          subjects: $checkedConvert(
              'subjects',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => V1beta2Subject.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta2PolicyRulesWithSubjectsToJson(
    V1beta2PolicyRulesWithSubjects instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nonResourceRules',
      instance.nonResourceRules?.map((e) => e.toJson()).toList());
  writeNotNull(
      'resourceRules', instance.resourceRules?.map((e) => e.toJson()).toList());
  val['subjects'] = instance.subjects.map((e) => e.toJson()).toList();
  return val;
}
