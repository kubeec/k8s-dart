// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_validating_admission_policy_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ValidatingAdmissionPolicySpec
    _$V1alpha1ValidatingAdmissionPolicySpecFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha1ValidatingAdmissionPolicySpec',
          json,
          ($checkedConvert) {
            final val = V1alpha1ValidatingAdmissionPolicySpec(
              auditAnnotations: $checkedConvert(
                  'auditAnnotations',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) => V1alpha1AuditAnnotation.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
              failurePolicy:
                  $checkedConvert('failurePolicy', (v) => v as String?),
              matchConditions: $checkedConvert(
                  'matchConditions',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) => V1alpha1MatchCondition.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
              matchConstraints: $checkedConvert(
                  'matchConstraints',
                  (v) => v == null
                      ? null
                      : V1alpha1MatchResources.fromJson(
                          v as Map<String, dynamic>)),
              paramKind: $checkedConvert(
                  'paramKind',
                  (v) => v == null
                      ? null
                      : V1alpha1ParamKind.fromJson(v as Map<String, dynamic>)),
              validations: $checkedConvert(
                  'validations',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) => V1alpha1Validation.fromJson(
                          e as Map<String, dynamic>))
                      .toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha1ValidatingAdmissionPolicySpecToJson(
    V1alpha1ValidatingAdmissionPolicySpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auditAnnotations',
      instance.auditAnnotations?.map((e) => e.toJson()).toList());
  writeNotNull('failurePolicy', instance.failurePolicy);
  writeNotNull('matchConditions',
      instance.matchConditions?.map((e) => e.toJson()).toList());
  writeNotNull('matchConstraints', instance.matchConstraints?.toJson());
  writeNotNull('paramKind', instance.paramKind?.toJson());
  writeNotNull(
      'validations', instance.validations?.map((e) => e.toJson()).toList());
  return val;
}
