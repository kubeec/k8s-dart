//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_disruption_budget_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodDisruptionBudgetStatus {
  /// Returns a new [V1PodDisruptionBudgetStatus] instance.
  V1PodDisruptionBudgetStatus({

     this.conditions,

    required  this.currentHealthy,

    required  this.desiredHealthy,

     this.disruptedPods,

    required  this.disruptionsAllowed,

    required  this.expectedPods,

     this.observedGeneration,
  });

      /// Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute               the number of allowed disruptions. Therefore no disruptions are               allowed and the status of the condition will be False. - InsufficientPods: The number of pods are either at or below the number                     required by the PodDisruptionBudget. No disruptions are                     allowed and the status of the condition will be False. - SufficientPods: There are more pods than required by the PodDisruptionBudget.                   The condition will be True, and the number of allowed                   disruptions are provided by the disruptionsAllowed property.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1Condition>? conditions;



      /// current number of healthy pods
  @JsonKey(
    
    name: r'currentHealthy',
    required: true,
    includeIfNull: false
  )


  final int currentHealthy;



      /// minimum desired number of healthy pods
  @JsonKey(
    
    name: r'desiredHealthy',
    required: true,
    includeIfNull: false
  )


  final int desiredHealthy;



      /// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  @JsonKey(
    
    name: r'disruptedPods',
    required: false,
    includeIfNull: false
  )


  final Map<String, DateTime>? disruptedPods;



      /// Number of pod disruptions that are currently allowed.
  @JsonKey(
    
    name: r'disruptionsAllowed',
    required: true,
    includeIfNull: false
  )


  final int disruptionsAllowed;



      /// total number of pods counted by this disruption budget
  @JsonKey(
    
    name: r'expectedPods',
    required: true,
    includeIfNull: false
  )


  final int expectedPods;



      /// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodDisruptionBudgetStatus &&
     other.conditions == conditions &&
     other.currentHealthy == currentHealthy &&
     other.desiredHealthy == desiredHealthy &&
     other.disruptedPods == disruptedPods &&
     other.disruptionsAllowed == disruptionsAllowed &&
     other.expectedPods == expectedPods &&
     other.observedGeneration == observedGeneration;

  @override
  int get hashCode =>
    conditions.hashCode +
    currentHealthy.hashCode +
    desiredHealthy.hashCode +
    disruptedPods.hashCode +
    disruptionsAllowed.hashCode +
    expectedPods.hashCode +
    observedGeneration.hashCode;

  factory V1PodDisruptionBudgetStatus.fromJson(Map<String, dynamic> json) => _$V1PodDisruptionBudgetStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodDisruptionBudgetStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

