// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_job_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1JobStatus _$V1JobStatusFromJson(Map<String, dynamic> json) => $checkedCreate(
      'V1JobStatus',
      json,
      ($checkedConvert) {
        final val = V1JobStatus(
          active: $checkedConvert('active', (v) => v as int?),
          completedIndexes:
              $checkedConvert('completedIndexes', (v) => v as String?),
          completionTime: $checkedConvert('completionTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          conditions: $checkedConvert(
              'conditions',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => V1JobCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          failed: $checkedConvert('failed', (v) => v as int?),
          ready: $checkedConvert('ready', (v) => v as int?),
          startTime: $checkedConvert('startTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          succeeded: $checkedConvert('succeeded', (v) => v as int?),
          uncountedTerminatedPods: $checkedConvert(
              'uncountedTerminatedPods',
              (v) => v == null
                  ? null
                  : V1UncountedTerminatedPods.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1JobStatusToJson(V1JobStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  writeNotNull('completedIndexes', instance.completedIndexes);
  writeNotNull('completionTime', instance.completionTime?.toIso8601String());
  writeNotNull(
      'conditions', instance.conditions?.map((e) => e.toJson()).toList());
  writeNotNull('failed', instance.failed);
  writeNotNull('ready', instance.ready);
  writeNotNull('startTime', instance.startTime?.toIso8601String());
  writeNotNull('succeeded', instance.succeeded);
  writeNotNull(
      'uncountedTerminatedPods', instance.uncountedTerminatedPods?.toJson());
  return val;
}
