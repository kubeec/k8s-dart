// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_audit_annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1AuditAnnotation _$V1alpha1AuditAnnotationFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1AuditAnnotation',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key', 'valueExpression'],
        );
        final val = V1alpha1AuditAnnotation(
          key: $checkedConvert('key', (v) => v as String),
          valueExpression:
              $checkedConvert('valueExpression', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1AuditAnnotationToJson(
        V1alpha1AuditAnnotation instance) =>
    <String, dynamic>{
      'key': instance.key,
      'valueExpression': instance.valueExpression,
    };
