// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim_parameters_reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaimParametersReference
    _$V1alpha2ResourceClaimParametersReferenceFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'V1alpha2ResourceClaimParametersReference',
          json,
          ($checkedConvert) {
            $checkKeys(
              json,
              requiredKeys: const ['kind', 'name'],
            );
            final val = V1alpha2ResourceClaimParametersReference(
              apiGroup: $checkedConvert('apiGroup', (v) => v as String?),
              kind: $checkedConvert('kind', (v) => v as String),
              name: $checkedConvert('name', (v) => v as String),
            );
            return val;
          },
        );

Map<String, dynamic> _$V1alpha2ResourceClaimParametersReferenceToJson(
    V1alpha2ResourceClaimParametersReference instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiGroup', instance.apiGroup);
  val['kind'] = instance.kind;
  val['name'] = instance.name;
  return val;
}
