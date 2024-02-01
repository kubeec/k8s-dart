// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_v1_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsV1Event _$EventsV1EventFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EventsV1Event',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['eventTime'],
        );
        final val = EventsV1Event(
          action: $checkedConvert('action', (v) => v as String?),
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          deprecatedCount: $checkedConvert('deprecatedCount', (v) => v as int?),
          deprecatedFirstTimestamp: $checkedConvert('deprecatedFirstTimestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deprecatedLastTimestamp: $checkedConvert('deprecatedLastTimestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          deprecatedSource: $checkedConvert(
              'deprecatedSource',
              (v) => v == null
                  ? null
                  : V1EventSource.fromJson(v as Map<String, dynamic>)),
          eventTime:
              $checkedConvert('eventTime', (v) => DateTime.parse(v as String)),
          kind: $checkedConvert('kind', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) => v == null
                  ? null
                  : V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          note: $checkedConvert('note', (v) => v as String?),
          reason: $checkedConvert('reason', (v) => v as String?),
          regarding: $checkedConvert(
              'regarding',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          related: $checkedConvert(
              'related',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          reportingController:
              $checkedConvert('reportingController', (v) => v as String?),
          reportingInstance:
              $checkedConvert('reportingInstance', (v) => v as String?),
          series: $checkedConvert(
              'series',
              (v) => v == null
                  ? null
                  : EventsV1EventSeries.fromJson(v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventsV1EventToJson(EventsV1Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action);
  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('deprecatedCount', instance.deprecatedCount);
  writeNotNull('deprecatedFirstTimestamp',
      instance.deprecatedFirstTimestamp?.toIso8601String());
  writeNotNull('deprecatedLastTimestamp',
      instance.deprecatedLastTimestamp?.toIso8601String());
  writeNotNull('deprecatedSource', instance.deprecatedSource?.toJson());
  val['eventTime'] = instance.eventTime.toIso8601String();
  writeNotNull('kind', instance.kind);
  writeNotNull('metadata', instance.metadata?.toJson());
  writeNotNull('note', instance.note);
  writeNotNull('reason', instance.reason);
  writeNotNull('regarding', instance.regarding?.toJson());
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('reportingController', instance.reportingController);
  writeNotNull('reportingInstance', instance.reportingInstance);
  writeNotNull('series', instance.series?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
