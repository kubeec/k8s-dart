// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_match_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1MatchCondition _$V1MatchConditionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1MatchCondition',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['expression', 'name'],
        );
        final val = V1MatchCondition(
          expression: $checkedConvert('expression', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1MatchConditionToJson(V1MatchCondition instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
    };
