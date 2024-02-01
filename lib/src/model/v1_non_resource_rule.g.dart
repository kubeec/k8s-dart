// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_non_resource_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1NonResourceRule _$V1NonResourceRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1NonResourceRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['verbs'],
        );
        final val = V1NonResourceRule(
          nonResourceURLs: $checkedConvert('nonResourceURLs',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
          verbs: $checkedConvert('verbs',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1NonResourceRuleToJson(V1NonResourceRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nonResourceURLs', instance.nonResourceURLs);
  val['verbs'] = instance.verbs;
  return val;
}
