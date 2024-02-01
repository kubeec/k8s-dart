// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_validating_admission_policy_binding_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ValidatingAdmissionPolicyBindingSpec
    _$V1alpha1ValidatingAdmissionPolicyBindingSpecFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha1ValidatingAdmissionPolicyBindingSpec',
          json,
          ($checkedConvert) {
            final val = V1alpha1ValidatingAdmissionPolicyBindingSpec(
              matchResources: $checkedConvert(
                  'matchResources',
                  (v) => v == null
                      ? null
                      : V1alpha1MatchResources.fromJson(
                          v as Map<String, dynamic>)),
              paramRef: $checkedConvert(
                  'paramRef',
                  (v) => v == null
                      ? null
                      : V1alpha1ParamRef.fromJson(v as Map<String, dynamic>)),
              policyName: $checkedConvert('policyName', (v) => v as String?),
              validationActions: $checkedConvert(
                  'validationActions',
                  (v) =>
                      (v as List<dynamic>?)?.map((e) => e as String).toList()),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha1ValidatingAdmissionPolicyBindingSpecToJson(
    V1alpha1ValidatingAdmissionPolicyBindingSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('matchResources', instance.matchResources?.toJson());
  writeNotNull('paramRef', instance.paramRef?.toJson());
  writeNotNull('policyName', instance.policyName);
  writeNotNull('validationActions', instance.validationActions);
  return val;
}
