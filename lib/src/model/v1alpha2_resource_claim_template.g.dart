// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha2_resource_claim_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha2ResourceClaimTemplate _$V1alpha2ResourceClaimTemplateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha2ResourceClaimTemplate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1alpha2ResourceClaimTemplate(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1alpha2ResourceClaimTemplateSpec.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha2ResourceClaimTemplateToJson(
    V1alpha2ResourceClaimTemplate instance) {
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
  return val;
}
