// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_resource_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ResourceRule _$V1ResourceRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ResourceRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['verbs'],
        );
        final val = V1ResourceRule(
          apiGroups: $checkedConvert('apiGroups',
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

Map<String, dynamic> _$V1ResourceRuleToJson(V1ResourceRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroups', instance.apiGroups);
  writeNotNull('resourceNames', instance.resourceNames);
  writeNotNull('resources', instance.resources);
  val['verbs'] = instance.verbs;
  return val;
}
