// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1Validation _$V1alpha1ValidationFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1Validation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['expression'],
        );
        final val = V1alpha1Validation(
          expression: $checkedConvert('expression', (v) => v as String),
          message: $checkedConvert('message', (v) => v as String?),
          messageExpression:
              $checkedConvert('messageExpression', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ValidationToJson(V1alpha1Validation instance) {
  final val = <String, dynamic>{
    'expression': instance.expression,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('messageExpression', instance.messageExpression);
  writeNotNull('reason', instance.reason);
  return val;
}
