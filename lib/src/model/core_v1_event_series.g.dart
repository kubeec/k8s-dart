// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_v1_event_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreV1EventSeries _$CoreV1EventSeriesFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CoreV1EventSeries',
      json,
      ($checkedConvert) {
        final val = CoreV1EventSeries(
          count: $checkedConvert('count', (v) => v as int?),
          lastObservedTime: $checkedConvert('lastObservedTime',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CoreV1EventSeriesToJson(CoreV1EventSeries instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull(
      'lastObservedTime', instance.lastObservedTime?.toIso8601String());
  return val;
}
