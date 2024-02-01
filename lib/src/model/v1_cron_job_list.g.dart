// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_cron_job_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1CronJobList _$V1CronJobListFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1CronJobList',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['items'],
        );
        final val = V1CronJobList(
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          items: $checkedConvert(
              'items',
              (v) => (v as List<dynamic>)
                  .map((e) => V1CronJob.fromJson(e as Map<String, dynamic>))
                  .toList()),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ListMeta.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1CronJobListToJson(V1CronJobList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('apiVersion', instance.apiVersion);
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  return val;
}
