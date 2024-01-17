//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'events_v1_event_series.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventsV1EventSeries {
  /// Returns a new [EventsV1EventSeries] instance.
  EventsV1EventSeries({

    required  this.count,

    required  this.lastObservedTime,
  });

      /// count is the number of occurrences in this series up to the last heartbeat time.
  @JsonKey(
    
    name: r'count',
    required: true,
    includeIfNull: false
  )


  final int count;



      /// lastObservedTime is the time when last Event from the series was seen before last heartbeat.
  @JsonKey(
    
    name: r'lastObservedTime',
    required: true,
    includeIfNull: false
  )


  final DateTime lastObservedTime;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EventsV1EventSeries &&
     other.count == count &&
     other.lastObservedTime == lastObservedTime;

  @override
  int get hashCode =>
    count.hashCode +
    lastObservedTime.hashCode;

  factory EventsV1EventSeries.fromJson(Map<String, dynamic> json) => _$EventsV1EventSeriesFromJson(json);

  Map<String, dynamic> toJson() => _$EventsV1EventSeriesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

