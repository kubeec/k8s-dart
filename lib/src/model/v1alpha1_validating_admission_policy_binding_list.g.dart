// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_validating_admission_policy_binding_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1ValidatingAdmissionPolicyBindingList
    _$V1alpha1ValidatingAdmissionPolicyBindingListFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha1ValidatingAdmissionPolicyBindingList',
          json,
          ($checkedConvert) {
            final val = V1alpha1ValidatingAdmissionPolicyBindingList(
              apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
              items: $checkedConvert(
                  'items',
                  (v) => (v as List<dynamic>?)
                      ?.map((e) =>
                          V1alpha1ValidatingAdmissionPolicyBinding.fromJson(
                              e as Map<String, dynamic>))
                      .toList()),
              kind: $checkedConvert('kind', (v) => v as String?),
              metadata: $checkedConvert(
                  'metadata',
                  (v) => v == null
                      ? null
                      : V1ListMeta.fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha1ValidatingAdmissionPolicyBindingListToJson(
    V1alpha1ValidatingAdmissionPolicyBindingList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  return val;
}
