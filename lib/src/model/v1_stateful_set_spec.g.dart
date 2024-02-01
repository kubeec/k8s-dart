// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_stateful_set_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1StatefulSetSpec _$V1StatefulSetSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1StatefulSetSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['selector', 'serviceName', 'template'],
        );
        final val = V1StatefulSetSpec(
          minReadySeconds: $checkedConvert('minReadySeconds', (v) => v as int?),
          ordinals: $checkedConvert(
              'ordinals',
              (v) => v == null
                  ? null
                  : V1StatefulSetOrdinals.fromJson(v as Map<String, dynamic>)),
          persistentVolumeClaimRetentionPolicy: $checkedConvert(
              'persistentVolumeClaimRetentionPolicy',
              (v) => v == null
                  ? null
                  : V1StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(
                      v as Map<String, dynamic>)),
          podManagementPolicy:
              $checkedConvert('podManagementPolicy', (v) => v as String?),
          replicas: $checkedConvert('replicas', (v) => v as int?),
          revisionHistoryLimit:
              $checkedConvert('revisionHistoryLimit', (v) => v as int?),
          selector: $checkedConvert('selector',
              (v) => V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          serviceName: $checkedConvert('serviceName', (v) => v as String),
          template: $checkedConvert('template',
              (v) => V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
          updateStrategy: $checkedConvert(
              'updateStrategy',
              (v) => v == null
                  ? null
                  : V1StatefulSetUpdateStrategy.fromJson(
                      v as Map<String, dynamic>)),
          volumeClaimTemplates: $checkedConvert(
              'volumeClaimTemplates',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1PersistentVolumeClaim.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1StatefulSetSpecToJson(V1StatefulSetSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minReadySeconds', instance.minReadySeconds);
  writeNotNull('ordinals', instance.ordinals?.toJson());
  writeNotNull('persistentVolumeClaimRetentionPolicy',
      instance.persistentVolumeClaimRetentionPolicy?.toJson());
  writeNotNull('podManagementPolicy', instance.podManagementPolicy);
  writeNotNull('replicas', instance.replicas);
  writeNotNull('revisionHistoryLimit', instance.revisionHistoryLimit);
  val['selector'] = instance.selector.toJson();
  val['serviceName'] = instance.serviceName;
  val['template'] = instance.template.toJson();
  writeNotNull('updateStrategy', instance.updateStrategy?.toJson());
  writeNotNull('volumeClaimTemplates',
      instance.volumeClaimTemplates?.map((e) => e.toJson()).toList());
  return val;
}
