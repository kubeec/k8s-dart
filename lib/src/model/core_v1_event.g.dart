// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_v1_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreV1Event _$CoreV1EventFromJson(Map<String, dynamic> json) => $checkedCreate(
      'CoreV1Event',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['involvedObject', 'metadata'],
        );
        final val = CoreV1Event(
          action: $checkedConvert('action', (v) => v as String?),
          apiVersion: $checkedConvert('apiVersion', (v) => v as String?),
          count: $checkedConvert('count', (v) => v as int?),
          eventTime: $checkedConvert('eventTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
          firstTimestamp: $checkedConvert('firstTimestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          involvedObject: $checkedConvert('involvedObject',
              (v) => V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          kind: $checkedConvert('kind', (v) => v as String?),
          lastTimestamp: $checkedConvert('lastTimestamp',
              (v) => v == null ? null : DateTime.parse(v as String)),
          message: $checkedConvert('message', (v) => v as String?),
          metadata: $checkedConvert('metadata',
              (v) => V1ObjectMeta.fromJson(v as Map<String, dynamic>)),
          reason: $checkedConvert('reason', (v) => v as String?),
          related: $checkedConvert(
              'related',
              (v) => v == null
                  ? null
                  : V1ObjectReference.fromJson(v as Map<String, dynamic>)),
          reportingComponent:
              $checkedConvert('reportingComponent', (v) => v as String?),
          reportingInstance:
              $checkedConvert('reportingInstance', (v) => v as String?),
          series: $checkedConvert(
              'series',
              (v) => v == null
                  ? null
                  : CoreV1EventSeries.fromJson(v as Map<String, dynamic>)),
          source_: $checkedConvert(
              'source',
              (v) => v == null
                  ? null
                  : V1EventSource.fromJson(v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {'source_': 'source'},
    );

Map<String, dynamic> _$CoreV1EventToJson(CoreV1Event instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', instance.action);
  writeNotNull('apiVersion', instance.apiVersion);
  writeNotNull('count', instance.count);
  writeNotNull('eventTime', instance.eventTime?.toIso8601String());
  writeNotNull('firstTimestamp', instance.firstTimestamp?.toIso8601String());
  val['involvedObject'] = instance.involvedObject.toJson();
  writeNotNull('kind', instance.kind);
  writeNotNull('lastTimestamp', instance.lastTimestamp?.toIso8601String());
  writeNotNull('message', instance.message);
  val['metadata'] = instance.metadata.toJson();
  writeNotNull('reason', instance.reason);
  writeNotNull('related', instance.related?.toJson());
  writeNotNull('reportingComponent', instance.reportingComponent);
  writeNotNull('reportingInstance', instance.reportingInstance);
  writeNotNull('series', instance.series?.toJson());
  writeNotNull('source', instance.source_?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
