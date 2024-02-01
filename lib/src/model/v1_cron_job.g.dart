// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cron_job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CronJob _$V1CronJobFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1CronJob',
      json,
      ($checkedConvert) {
        final val = V1CronJob(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          spec: $checkedConvert(
              'spec',
              (v) => v == null
                  ? null
                  : V1CronJobSpec.fromJson(v as Map<String, dynamic>)),
          status: $checkedConvert(
              'status',
              (v) => v == null
                  ? null
                  : V1CronJobStatus.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CronJobToJson(V1CronJob instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('spec', instance.spec?.toJson());
  writeNotNull('status', instance.status?.toJson());
  return val;
}
