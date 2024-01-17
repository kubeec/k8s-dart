//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_deployment_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_deployment_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DeploymentStatus {
  /// Returns a new [V1DeploymentStatus] instance.
  V1DeploymentStatus({

     this.availableReplicas,

     this.collisionCount,

     this.conditions,

     this.observedGeneration,

     this.readyReplicas,

     this.replicas,

     this.unavailableReplicas,

     this.updatedReplicas,
  });

      /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  @JsonKey(
    
    name: r'availableReplicas',
    required: false,
    includeIfNull: false
  )


  final int? availableReplicas;



      /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  @JsonKey(
    
    name: r'collisionCount',
    required: false,
    includeIfNull: false
  )


  final int? collisionCount;



      /// Represents the latest available observations of a deployment's current state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1DeploymentCondition>? conditions;



      /// The generation observed by the deployment controller.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



      /// readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
  @JsonKey(
    
    name: r'readyReplicas',
    required: false,
    includeIfNull: false
  )


  final int? readyReplicas;



      /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  @JsonKey(
    
    name: r'replicas',
    required: false,
    includeIfNull: false
  )


  final int? replicas;



      /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  @JsonKey(
    
    name: r'unavailableReplicas',
    required: false,
    includeIfNull: false
  )


  final int? unavailableReplicas;



      /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  @JsonKey(
    
    name: r'updatedReplicas',
    required: false,
    includeIfNull: false
  )


  final int? updatedReplicas;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DeploymentStatus &&
     other.availableReplicas == availableReplicas &&
     other.collisionCount == collisionCount &&
     other.conditions == conditions &&
     other.observedGeneration == observedGeneration &&
     other.readyReplicas == readyReplicas &&
     other.replicas == replicas &&
     other.unavailableReplicas == unavailableReplicas &&
     other.updatedReplicas == updatedReplicas;

  @override
  int get hashCode =>
    availableReplicas.hashCode +
    collisionCount.hashCode +
    conditions.hashCode +
    observedGeneration.hashCode +
    readyReplicas.hashCode +
    replicas.hashCode +
    unavailableReplicas.hashCode +
    updatedReplicas.hashCode;

  factory V1DeploymentStatus.fromJson(Map<String, dynamic> json) => _$V1DeploymentStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1DeploymentStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

