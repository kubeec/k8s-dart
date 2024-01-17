//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_stateful_set_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_stateful_set_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatefulSetStatus {
  /// Returns a new [V1StatefulSetStatus] instance.
  V1StatefulSetStatus({

     this.availableReplicas,

     this.collisionCount,

     this.conditions,

     this.currentReplicas,

     this.currentRevision,

     this.observedGeneration,

     this.readyReplicas,

    required  this.replicas,

     this.updateRevision,

     this.updatedReplicas,
  });

      /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  @JsonKey(
    
    name: r'availableReplicas',
    required: false,
    includeIfNull: false
  )


  final int? availableReplicas;



      /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  @JsonKey(
    
    name: r'collisionCount',
    required: false,
    includeIfNull: false
  )


  final int? collisionCount;



      /// Represents the latest available observations of a statefulset's current state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1StatefulSetCondition>? conditions;



      /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  @JsonKey(
    
    name: r'currentReplicas',
    required: false,
    includeIfNull: false
  )


  final int? currentReplicas;



      /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  @JsonKey(
    
    name: r'currentRevision',
    required: false,
    includeIfNull: false
  )


  final String? currentRevision;



      /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



      /// readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  @JsonKey(
    
    name: r'readyReplicas',
    required: false,
    includeIfNull: false
  )


  final int? readyReplicas;



      /// replicas is the number of Pods created by the StatefulSet controller.
  @JsonKey(
    
    name: r'replicas',
    required: true,
    includeIfNull: false
  )


  final int replicas;



      /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  @JsonKey(
    
    name: r'updateRevision',
    required: false,
    includeIfNull: false
  )


  final String? updateRevision;



      /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  @JsonKey(
    
    name: r'updatedReplicas',
    required: false,
    includeIfNull: false
  )


  final int? updatedReplicas;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatefulSetStatus &&
     other.availableReplicas == availableReplicas &&
     other.collisionCount == collisionCount &&
     other.conditions == conditions &&
     other.currentReplicas == currentReplicas &&
     other.currentRevision == currentRevision &&
     other.observedGeneration == observedGeneration &&
     other.readyReplicas == readyReplicas &&
     other.replicas == replicas &&
     other.updateRevision == updateRevision &&
     other.updatedReplicas == updatedReplicas;

  @override
  int get hashCode =>
    availableReplicas.hashCode +
    collisionCount.hashCode +
    conditions.hashCode +
    currentReplicas.hashCode +
    currentRevision.hashCode +
    observedGeneration.hashCode +
    readyReplicas.hashCode +
    replicas.hashCode +
    updateRevision.hashCode +
    updatedReplicas.hashCode;

  factory V1StatefulSetStatus.fromJson(Map<String, dynamic> json) => _$V1StatefulSetStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatefulSetStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

