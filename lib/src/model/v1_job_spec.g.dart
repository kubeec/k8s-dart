// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_job_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1JobSpec _$V1JobSpecFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1JobSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['template'],
        );
        final val = V1JobSpec(
          activeDeadlineSeconds:
              $checkedConvert('activeDeadlineSeconds', (v) => v as int?),
          backoffLimit: $checkedConvert('backoffLimit', (v) => v as int?),
          completionMode:
              $checkedConvert('completionMode', (v) => v as String?),
          completions: $checkedConvert('completions', (v) => v as int?),
          manualSelector: $checkedConvert('manualSelector', (v) => v as bool?),
          parallelism: $checkedConvert('parallelism', (v) => v as int?),
          podFailurePolicy: $checkedConvert(
              'podFailurePolicy',
              (v) => v == null
                  ? null
                  : V1PodFailurePolicy.fromJson(v as Map<String, dynamic>)),
          selector: $checkedConvert(
              'selector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          suspend: $checkedConvert('suspend', (v) => v as bool?),
          template: $checkedConvert('template',
              (v) => V1PodTemplateSpec.fromJson(v as Map<String, dynamic>)),
          ttlSecondsAfterFinished:
              $checkedConvert('ttlSecondsAfterFinished', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1JobSpecToJson(V1JobSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('activeDeadlineSeconds', instance.activeDeadlineSeconds);
  writeNotNull('backoffLimit', instance.backoffLimit);
  writeNotNull('completionMode', instance.completionMode);
  writeNotNull('completions', instance.completions);
  writeNotNull('manualSelector', instance.manualSelector);
  writeNotNull('parallelism', instance.parallelism);
  writeNotNull('podFailurePolicy', instance.podFailurePolicy?.toJson());
  writeNotNull('selector', instance.selector?.toJson());
  writeNotNull('suspend', instance.suspend);
  val['template'] = instance.template.toJson();
  writeNotNull('ttlSecondsAfterFinished', instance.ttlSecondsAfterFinished);
  return val;
}
