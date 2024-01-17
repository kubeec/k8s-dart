//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_event_source.dart';
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:k8s/src/model/events_v1_event_series.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'events_v1_event.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventsV1Event {
  /// Returns a new [EventsV1Event] instance.
  EventsV1Event({

     this.action,

     this.apiVersion,

     this.deprecatedCount,

     this.deprecatedFirstTimestamp,

     this.deprecatedLastTimestamp,

     this.deprecatedSource,

    required  this.eventTime,

     this.kind,

     this.metadata,

     this.note,

     this.reason,

     this.regarding,

     this.related,

     this.reportingController,

     this.reportingInstance,

     this.series,

     this.type,
  });

      /// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  @JsonKey(
    
    name: r'action',
    required: false,
    includeIfNull: false
  )


  final String? action;



      /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  @JsonKey(
    
    name: r'deprecatedCount',
    required: false,
    includeIfNull: false
  )


  final int? deprecatedCount;



      /// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  @JsonKey(
    
    name: r'deprecatedFirstTimestamp',
    required: false,
    includeIfNull: false
  )


  final DateTime? deprecatedFirstTimestamp;



      /// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  @JsonKey(
    
    name: r'deprecatedLastTimestamp',
    required: false,
    includeIfNull: false
  )


  final DateTime? deprecatedLastTimestamp;



  @JsonKey(
    
    name: r'deprecatedSource',
    required: false,
    includeIfNull: false
  )


  final V1EventSource? deprecatedSource;



      /// eventTime is the time when this Event was first observed. It is required.
  @JsonKey(
    
    name: r'eventTime',
    required: true,
    includeIfNull: false
  )


  final DateTime eventTime;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false
  )


  final V1ObjectMeta? metadata;



      /// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false
  )


  final String? note;



      /// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @JsonKey(
    
    name: r'regarding',
    required: false,
    includeIfNull: false
  )


  final V1ObjectReference? regarding;



  @JsonKey(
    
    name: r'related',
    required: false,
    includeIfNull: false
  )


  final V1ObjectReference? related;



      /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  @JsonKey(
    
    name: r'reportingController',
    required: false,
    includeIfNull: false
  )


  final String? reportingController;



      /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  @JsonKey(
    
    name: r'reportingInstance',
    required: false,
    includeIfNull: false
  )


  final String? reportingInstance;



  @JsonKey(
    
    name: r'series',
    required: false,
    includeIfNull: false
  )


  final EventsV1EventSeries? series;



      /// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is EventsV1Event &&
     other.action == action &&
     other.apiVersion == apiVersion &&
     other.deprecatedCount == deprecatedCount &&
     other.deprecatedFirstTimestamp == deprecatedFirstTimestamp &&
     other.deprecatedLastTimestamp == deprecatedLastTimestamp &&
     other.deprecatedSource == deprecatedSource &&
     other.eventTime == eventTime &&
     other.kind == kind &&
     other.metadata == metadata &&
     other.note == note &&
     other.reason == reason &&
     other.regarding == regarding &&
     other.related == related &&
     other.reportingController == reportingController &&
     other.reportingInstance == reportingInstance &&
     other.series == series &&
     other.type == type;

  @override
  int get hashCode =>
    action.hashCode +
    apiVersion.hashCode +
    deprecatedCount.hashCode +
    deprecatedFirstTimestamp.hashCode +
    deprecatedLastTimestamp.hashCode +
    deprecatedSource.hashCode +
    eventTime.hashCode +
    kind.hashCode +
    metadata.hashCode +
    note.hashCode +
    reason.hashCode +
    regarding.hashCode +
    related.hashCode +
    reportingController.hashCode +
    reportingInstance.hashCode +
    series.hashCode +
    type.hashCode;

  factory EventsV1Event.fromJson(Map<String, dynamic> json) => _$EventsV1EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventsV1EventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

