// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_aggregation_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1AggregationRule _$V1AggregationRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1AggregationRule',
      json,
      ($checkedConvert) {
        final val = V1AggregationRule(
          clusterRoleSelectors: $checkedConvert(
              'clusterRoleSelectors',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1LabelSelector.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1AggregationRuleToJson(V1AggregationRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clusterRoleSelectors',
      instance.clusterRoleSelectors?.map((e) => e.toJson()).toList());
  return val;
}
