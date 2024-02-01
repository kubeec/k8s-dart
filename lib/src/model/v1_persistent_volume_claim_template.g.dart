// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_persistent_volume_claim_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1PersistentVolumeClaimTemplate _$V1PersistentVolumeClaimTemplateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1PersistentVolumeClaimTemplate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['spec'],
        );
        final val = V1PersistentVolumeClaimTemplate(
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => V1PersistentVolumeClaimSpec.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1PersistentVolumeClaimTemplateToJson(
    V1PersistentVolumeClaimTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata?.toJson());
  val['spec'] = instance.spec.toJson();
  return val;
}
