//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_daemon_set_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_daemon_set_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DaemonSetStatus {
  /// Returns a new [V1DaemonSetStatus] instance.
  V1DaemonSetStatus({

     this.collisionCount,

     this.conditions,

    required  this.currentNumberScheduled,

    required  this.desiredNumberScheduled,

     this.numberAvailable,

    required  this.numberMisscheduled,

    required  this.numberReady,

     this.numberUnavailable,

     this.observedGeneration,

     this.updatedNumberScheduled,
  });

      /// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  @JsonKey(
    
    name: r'collisionCount',
    required: false,
    includeIfNull: false
  )


  final int? collisionCount;



      /// Represents the latest available observations of a DaemonSet's current state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1DaemonSetCondition>? conditions;



      /// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @JsonKey(
    
    name: r'currentNumberScheduled',
    required: true,
    includeIfNull: false
  )


  final int currentNumberScheduled;



      /// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @JsonKey(
    
    name: r'desiredNumberScheduled',
    required: true,
    includeIfNull: false
  )


  final int desiredNumberScheduled;



      /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  @JsonKey(
    
    name: r'numberAvailable',
    required: false,
    includeIfNull: false
  )


  final int? numberAvailable;



      /// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @JsonKey(
    
    name: r'numberMisscheduled',
    required: true,
    includeIfNull: false
  )


  final int numberMisscheduled;



      /// numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
  @JsonKey(
    
    name: r'numberReady',
    required: true,
    includeIfNull: false
  )


  final int numberReady;



      /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  @JsonKey(
    
    name: r'numberUnavailable',
    required: false,
    includeIfNull: false
  )


  final int? numberUnavailable;



      /// The most recent generation observed by the daemon set controller.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



      /// The total number of nodes that are running updated daemon pod
  @JsonKey(
    
    name: r'updatedNumberScheduled',
    required: false,
    includeIfNull: false
  )


  final int? updatedNumberScheduled;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DaemonSetStatus &&
     other.collisionCount == collisionCount &&
     other.conditions == conditions &&
     other.currentNumberScheduled == currentNumberScheduled &&
     other.desiredNumberScheduled == desiredNumberScheduled &&
     other.numberAvailable == numberAvailable &&
     other.numberMisscheduled == numberMisscheduled &&
     other.numberReady == numberReady &&
     other.numberUnavailable == numberUnavailable &&
     other.observedGeneration == observedGeneration &&
     other.updatedNumberScheduled == updatedNumberScheduled;

  @override
  int get hashCode =>
    collisionCount.hashCode +
    conditions.hashCode +
    currentNumberScheduled.hashCode +
    desiredNumberScheduled.hashCode +
    numberAvailable.hashCode +
    numberMisscheduled.hashCode +
    numberReady.hashCode +
    numberUnavailable.hashCode +
    observedGeneration.hashCode +
    updatedNumberScheduled.hashCode;

  factory V1DaemonSetStatus.fromJson(Map<String, dynamic> json) => _$V1DaemonSetStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1DaemonSetStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

