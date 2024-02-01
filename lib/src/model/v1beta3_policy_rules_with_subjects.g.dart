// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_policy_rules_with_subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3PolicyRulesWithSubjects _$V1beta3PolicyRulesWithSubjectsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3PolicyRulesWithSubjects',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['subjects'],
        );
        final val = V1beta3PolicyRulesWithSubjects(
          nonResourceRules: $checkedConvert(
              'nonResourceRules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta3NonResourcePolicyRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          resourceRules: $checkedConvert(
              'resourceRules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1beta3ResourcePolicyRule.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
          subjects: $checkedConvert(
              'subjects',
              (v) => (v as List<dynamic>)
                  .map(
                      (e) => V1beta3Subject.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3PolicyRulesWithSubjectsToJson(
    V1beta3PolicyRulesWithSubjects instance) {
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
