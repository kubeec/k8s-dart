// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_validating_admission_policy_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ValidatingAdmissionPolicyStatus
    _$V1alpha1ValidatingAdmissionPolicyStatusFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha1ValidatingAdmissionPolicyStatus',
          json,
          ($checkedConvert) {
            final val = V1alpha1ValidatingAdmissionPolicyStatus(
              conditions: $checkedConvert(
                  'conditions',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) =>
                          V1Condition.fromJson(e as Map<String, dynamic>))
                      .toList()),
              observedGeneration:
                  $checkedConvert('observedGeneration', (v) => v as int?),
              typeChecking: $checkedConvert(
                  'typeChecking',
                  (v) => v == null
                      ? null
                      : V1alpha1TypeChecking.fromJson(
                          v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha1ValidatingAdmissionPolicyStatusToJson(
    V1alpha1ValidatingAdmissionPolicyStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('observedGeneration', instance.observedGeneration);
  writeNotNull('typeChecking', instance.typeChecking?.toJson());
  return val;
}
