// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_expression_warning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ExpressionWarning _$V1alpha1ExpressionWarningFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1ExpressionWarning',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['fieldRef', 'warning'],
        );
        final val = V1alpha1ExpressionWarning(
          fieldRef: $checkedConvert('fieldRef', (v) => v as String),
          warning: $checkedConvert('warning', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1ExpressionWarningToJson(
        V1alpha1ExpressionWarning instance) =>
    <String, dynamic>{
      'fieldRef': instance.fieldRef,
      'warning': instance.warning,
    };
