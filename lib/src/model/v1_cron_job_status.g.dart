// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cron_job_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CronJobStatus _$V1CronJobStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CronJobStatus',
      json,
      ($checkedConvert) {
        final val = V1CronJobStatus(
          active: $checkedConvert(
              'active',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1ObjectReference.fromJson(e as Map<String, dynamic>))
                  .toList()),
          lastScheduleTime: $checkedConvert('lastScheduleTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          lastSuccessfulTime: $checkedConvert('lastSuccessfulTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CronJobStatusToJson(V1CronJobStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active?.map((e) => e.toJson()).toList());
  writeNotNull(
      'lastScheduleTime', instance.lastScheduleTime?.toIso8601String());
  writeNotNull(
      'lastSuccessfulTime', instance.lastSuccessfulTime?.toIso8601String());
  return val;
}
