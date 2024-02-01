// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_v1_event_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventsV1EventSeries _$EventsV1EventSeriesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'EventsV1EventSeries',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['count', 'lastObservedTime'],
        );
        final val = EventsV1EventSeries(
          count: $checkedConvert('count', (v) => v as int),
          lastObservedTime: $checkedConvert(
              'lastObservedTime', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$EventsV1EventSeriesToJson(
        EventsV1EventSeries instance) =>
    <String, dynamic>{
      'count': instance.count,
      'lastObservedTime': instance.lastObservedTime.toIso8601String(),
    };
