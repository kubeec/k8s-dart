// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v2_hpa_scaling_rules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V2HPAScalingRules _$V2HPAScalingRulesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V2HPAScalingRules',
      json,
      ($checkedConvert) {
        final val = V2HPAScalingRules(
          policies: $checkedConvert(
              'policies',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V2HPAScalingPolicy.fromJson(e as Map<String, dynamic>))
                  .toList()),
          selectPolicy: $checkedConvert('selectPolicy', (v) => v as String?),
          stabilizationWindowSeconds:
              $checkedConvert('stabilizationWindowSeconds', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V2HPAScalingRulesToJson(V2HPAScalingRules instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('policies', instance.policies?.map((e) => e.toJson()).toList());
  writeNotNull('selectPolicy', instance.selectPolicy);
  writeNotNull(
      'stabilizationWindowSeconds', instance.stabilizationWindowSeconds);
  return val;
}
