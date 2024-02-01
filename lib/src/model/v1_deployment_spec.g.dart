// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_deployment_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DeploymentSpec _$V1DeploymentSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DeploymentSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['selector', 'template'],
        );
        final val = V1DeploymentSpec(
          minReadySeconds: $checkedConvert('minReadySeconds', (v) => v as int?),
          paused: $checkedConvert('paused', (v) => v as bool?),
          progressDeadlineSeconds:
              $checkedConvert('progressDeadlineSeconds', (v) => v as int?),
          replicas: $checkedConvert('replicas', (v) => v as int?),
          revisionHistoryLimit:
              $checkedConvert('revisionHistoryLimit', (v) => v as int?),
          selector: $checkedConvert('selector',
              (v) => V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          strategy: $checkedConvert(
              'strategy',
              (v) => v == null
                  ? null
                  : V1DeploymentStrategy.fromJson(v as Map<String, dynamic>)),
          template: $checkedConvert('template',
              (v) => V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DeploymentSpecToJson(V1DeploymentSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('minReadySeconds', instance.minReadySeconds);
  writeNotNull('paused', instance.paused);
  writeNotNull('progressDeadlineSeconds', instance.progressDeadlineSeconds);
  writeNotNull('replicas', instance.replicas);
  writeNotNull('revisionHistoryLimit', instance.revisionHistoryLimit);
  val['selector'] = instance.selector.toJson();
  writeNotNull('strategy', instance.strategy?.toJson());
  val['template'] = instance.template.toJson();
  return val;
}
