// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1beta2_resource_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1beta2ResourcePolicyRule _$V1beta2ResourcePolicyRuleFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1beta2ResourcePolicyRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['apiGroups', 'resources', 'verbs'],
        );
        final val = V1beta2ResourcePolicyRule(
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

Map<String, dynamic> _$V1beta2ResourcePolicyRuleToJson(
    V1beta2ResourcePolicyRule instance) {
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
