// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_match_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1MatchCondition _$V1alpha1MatchConditionFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1MatchCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['expression', 'name'],
        );
        final val = V1alpha1MatchCondition(
          expression: $checkedConvert('expression', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1MatchConditionToJson(
        V1alpha1MatchCondition instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
    };
