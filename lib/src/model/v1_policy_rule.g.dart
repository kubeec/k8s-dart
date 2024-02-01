// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PolicyRule _$V1PolicyRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PolicyRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['verbs'],
        );
        final val = V1PolicyRule(
          apiGroups: $checkedConvert('apiGroups',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          nonResourceURLs: $checkedConvert('nonResourceURLs',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          resourceNames: $checkedConvert('resourceNames',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          resources: $checkedConvert('resources',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          verbs: $checkedConvert('verbs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PolicyRuleToJson(V1PolicyRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroups', instance.apiGroups);
  writeNotNull('nonResourceURLs', instance.nonResourceURLs);
  writeNotNull('resourceNames', instance.resourceNames);
  writeNotNull('resources', instance.resources);
  val['verbs'] = instance.verbs;
  return val;
}
