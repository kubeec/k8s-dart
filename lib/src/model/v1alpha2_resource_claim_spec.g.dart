// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaimSpec _$V1alpha2ResourceClaimSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2ResourceClaimSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['resourceClassName'],
        );
        final val = V1alpha2ResourceClaimSpec(
          allocationMode:
              $checkedConvert('allocationMode', (v) => v as String?),
          parametersRef: $checkedConvert(
              'parametersRef',
              (v) => v == null
                  ? null
                  : V1alpha2ResourceClaimParametersReference.fromJson(
                      v as Map<String, dynamic>)),
          resourceClassName:
              $checkedConvert('resourceClassName', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2ResourceClaimSpecToJson(
    V1alpha2ResourceClaimSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allocationMode', instance.allocationMode);
  writeNotNull('parametersRef', instance.parametersRef?.toJson());
  val['resourceClassName'] = instance.resourceClassName;
  return val;
}
