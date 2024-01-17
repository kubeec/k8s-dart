//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_event_source.dart';
import 'package:k8s/src/model/core_v1_event_series.dart';
import 'package:k8s/src/model/v1_object_reference.dart';
import 'package:k8s/src/model/v1_object_meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'core_v1_event.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CoreV1Event {
  /// Returns a new [CoreV1Event] instance.
  CoreV1Event({

     this.action,

     this.apiVersion,

     this.count,

     this.eventTime,

     this.firstTimestamp,

    required  this.involvedObject,

     this.kind,

     this.lastTimestamp,

     this.message,

    required  this.metadata,

     this.reason,

     this.related,

     this.reportingComponent,

     this.reportingInstance,

     this.series,

     this.source_,

     this.type,
  });

      /// What action was taken/failed regarding to the Regarding object.
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



      /// The number of times this event has occurred.
  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false
  )


  final int? count;



      /// Time when this Event was first observed.
  @JsonKey(
    
    name: r'eventTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? eventTime;



      /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  @JsonKey(
    
    name: r'firstTimestamp',
    required: false,
    includeIfNull: false
  )


  final DateTime? firstTimestamp;



  @JsonKey(
    
    name: r'involvedObject',
    required: true,
    includeIfNull: false
  )


  final V1ObjectReference involvedObject;



      /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



      /// The time at which the most recent occurrence of this event was recorded.
  @JsonKey(
    
    name: r'lastTimestamp',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastTimestamp;



      /// A human-readable description of the status of this operation.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



  @JsonKey(
    
    name: r'metadata',
    required: true,
    includeIfNull: false
  )


  final V1ObjectMeta metadata;



      /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



  @JsonKey(
    
    name: r'related',
    required: false,
    includeIfNull: false
  )


  final V1ObjectReference? related;



      /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  @JsonKey(
    
    name: r'reportingComponent',
    required: false,
    includeIfNull: false
  )


  final String? reportingComponent;



      /// ID of the controller instance, e.g. `kubelet-xyzf`.
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


  final CoreV1EventSeries? series;



  @JsonKey(
    
    name: r'source',
    required: false,
    includeIfNull: false
  )


  final V1EventSource? source_;



      /// Type of this event (Normal, Warning), new types could be added in the future
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false
  )


  final String? type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreV1Event &&
     other.action == action &&
     other.apiVersion == apiVersion &&
     other.count == count &&
     other.eventTime == eventTime &&
     other.firstTimestamp == firstTimestamp &&
     other.involvedObject == involvedObject &&
     other.kind == kind &&
     other.lastTimestamp == lastTimestamp &&
     other.message == message &&
     other.metadata == metadata &&
     other.reason == reason &&
     other.related == related &&
     other.reportingComponent == reportingComponent &&
     other.reportingInstance == reportingInstance &&
     other.series == series &&
     other.source_ == source_ &&
     other.type == type;

  @override
  int get hashCode =>
    action.hashCode +
    apiVersion.hashCode +
    count.hashCode +
    eventTime.hashCode +
    firstTimestamp.hashCode +
    involvedObject.hashCode +
    kind.hashCode +
    lastTimestamp.hashCode +
    message.hashCode +
    metadata.hashCode +
    reason.hashCode +
    related.hashCode +
    reportingComponent.hashCode +
    reportingInstance.hashCode +
    series.hashCode +
    source_.hashCode +
    type.hashCode;

  factory CoreV1Event.fromJson(Map<String, dynamic> json) => _$CoreV1EventFromJson(json);

  Map<String, dynamic> toJson() => _$CoreV1EventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

