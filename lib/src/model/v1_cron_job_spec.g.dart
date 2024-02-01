// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cron_job_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CronJobSpec _$V1CronJobSpecFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CronJobSpec',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['jobTemplate', 'schedule'],
        );
        final val = V1CronJobSpec(
          concurrencyPolicy:
              $checkedConvert('concurrencyPolicy', (v) => v as String?),
          failedJobsHistoryLimit:
              $checkedConvert('failedJobsHistoryLimit', (v) => v as int?),
          jobTemplate: $checkedConvert('jobTemplate',
              (v) => V1JobTemplateSpec.fromJson(v as Map<String, dynamic>)),
          schedule: $checkedConvert('schedule', (v) => v as String),
          startingDeadlineSeconds:
              $checkedConvert('startingDeadlineSeconds', (v) => v as int?),
          successfulJobsHistoryLimit:
              $checkedConvert('successfulJobsHistoryLimit', (v) => v as int?),
          suspend: $checkedConvert('suspend', (v) => v as bool?),
          timeZone: $checkedConvert('timeZone', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CronJobSpecToJson(V1CronJobSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('concurrencyPolicy', instance.concurrencyPolicy);
  writeNotNull('failedJobsHistoryLimit', instance.failedJobsHistoryLimit);
  val['jobTemplate'] = instance.jobTemplate.toJson();
  val['schedule'] = instance.schedule;
  writeNotNull('startingDeadlineSeconds', instance.startingDeadlineSeconds);
  writeNotNull(
      'successfulJobsHistoryLimit', instance.successfulJobsHistoryLimit);
  writeNotNull('suspend', instance.suspend);
  writeNotNull('timeZone', instance.timeZone);
  return val;
}
