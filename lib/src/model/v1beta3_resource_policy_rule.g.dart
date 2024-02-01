// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta3_resource_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta3ResourcePolicyRule _$V1beta3ResourcePolicyRuleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta3ResourcePolicyRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['apiGroups', 'resources', 'verbs'],
        );
        final val = V1beta3ResourcePolicyRule(
          apiGroups: $checkedConvert('apiGroups',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          clusterScope: $checkedConvert('clusterScope', (v) => v as bool?),
          namespaces: $checkedConvert('namespaces',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          resources: $checkedConvert('resources',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          verbs: $checkedConvert('verbs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1beta3ResourcePolicyRuleToJson(
    V1beta3ResourcePolicyRule instance) {
  final val = <String, dynamic>{
    'apiGroups': instance.apiGroups,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clusterScope', instance.clusterScope);
  writeNotNull('namespaces', instance.namespaces);
  val['resources'] = instance.resources;
  val['verbs'] = instance.verbs;
  return val;
}
