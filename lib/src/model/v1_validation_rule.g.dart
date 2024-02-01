// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_validation_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ValidationRule _$V1ValidationRuleFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ValidationRule',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['rule'],
        );
        final val = V1ValidationRule(
          message: $checkedConvert('message', (v) => v as String?),
          messageExpression:
              $checkedConvert('messageExpression', (v) => v as String?),
          rule: $checkedConvert('rule', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ValidationRuleToJson(V1ValidationRule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('messageExpression', instance.messageExpression);
  val['rule'] = instance.rule;
  return val;
}
