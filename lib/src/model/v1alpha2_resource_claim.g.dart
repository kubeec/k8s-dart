// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaim _$V1alpha2ResourceClaimFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2ResourceClaim',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1alpha2ResourceClaim(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1alpha2ResourceClaimSpec.fromJson(
                  v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1alpha2ResourceClaimStatus.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2ResourceClaimToJson(
    V1alpha2ResourceClaim instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  writeNotNull('status', instance.status?.toJson());
  return val;
}
