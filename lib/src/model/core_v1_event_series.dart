//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'core_v1_event_series.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CoreV1EventSeries {
  /// Returns a new [CoreV1EventSeries] instance.
  CoreV1EventSeries({

     this.count,

     this.lastObservedTime,
  });

      /// Number of occurrences in this series up to the last heartbeat time
  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false
  )


  final int? count;



      /// Time of the last occurrence observed
  @JsonKey(
    
    name: r'lastObservedTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastObservedTime;



  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreV1EventSeries &&
     other.count == count &&
     other.lastObservedTime == lastObservedTime;

  @override
  int get hashCode =>
    count.hashCode +
    lastObservedTime.hashCode;

  factory CoreV1EventSeries.fromJson(Map<String, dynamic> json) => _$CoreV1EventSeriesFromJson(json);

  Map<String, dynamic> toJson() => _$CoreV1EventSeriesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

