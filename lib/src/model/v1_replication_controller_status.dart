//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_replication_controller_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_replication_controller_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ReplicationControllerStatus {
  /// Returns a new [V1ReplicationControllerStatus] instance.
  V1ReplicationControllerStatus({

     this.availableReplicas,

     this.conditions,

     this.fullyLabeledReplicas,

     this.observedGeneration,

     this.readyReplicas,

    required  this.replicas,
  });

      /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  @JsonKey(
    
    name: r'availableReplicas',
    required: false,
    includeIfNull: false
  )


  final int? availableReplicas;



      /// Represents the latest available observations of a replication controller's current state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1ReplicationControllerCondition>? conditions;



      /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  @JsonKey(
    
    name: r'fullyLabeledReplicas',
    required: false,
    includeIfNull: false
  )


  final int? fullyLabeledReplicas;



      /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



      /// The number of ready replicas for this replication controller.
  @JsonKey(
    
    name: r'readyReplicas',
    required: false,
    includeIfNull: false
  )


  final int? readyReplicas;



      /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  @JsonKey(
    
    name: r'replicas',
    required: true,
    includeIfNull: false
  )


  final int replicas;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ReplicationControllerStatus &&
     other.availableReplicas == availableReplicas &&
     other.conditions == conditions &&
     other.fullyLabeledReplicas == fullyLabeledReplicas &&
     other.observedGeneration == observedGeneration &&
     other.readyReplicas == readyReplicas &&
     other.replicas == replicas;

  @override
  int get hashCode =>
    availableReplicas.hashCode +
    conditions.hashCode +
    fullyLabeledReplicas.hashCode +
    observedGeneration.hashCode +
    readyReplicas.hashCode +
    replicas.hashCode;

  factory V1ReplicationControllerStatus.fromJson(Map<String, dynamic> json) => _$V1ReplicationControllerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1ReplicationControllerStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

