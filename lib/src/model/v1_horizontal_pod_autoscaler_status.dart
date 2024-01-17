//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_horizontal_pod_autoscaler_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HorizontalPodAutoscalerStatus {
  /// Returns a new [V1HorizontalPodAutoscalerStatus] instance.
  V1HorizontalPodAutoscalerStatus({

     this.currentCPUUtilizationPercentage,

    required  this.currentReplicas,

    required  this.desiredReplicas,

     this.lastScaleTime,

     this.observedGeneration,
  });

      /// currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  @JsonKey(
    
    name: r'currentCPUUtilizationPercentage',
    required: false,
    includeIfNull: false
  )


  final int? currentCPUUtilizationPercentage;



      /// currentReplicas is the current number of replicas of pods managed by this autoscaler.
  @JsonKey(
    
    name: r'currentReplicas',
    required: true,
    includeIfNull: false
  )


  final int currentReplicas;



      /// desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
  @JsonKey(
    
    name: r'desiredReplicas',
    required: true,
    includeIfNull: false
  )


  final int desiredReplicas;



      /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods; used by the autoscaler to control how often the number of pods is changed.
  @JsonKey(
    
    name: r'lastScaleTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? lastScaleTime;



      /// observedGeneration is the most recent generation observed by this autoscaler.
  @JsonKey(
    
    name: r'observedGeneration',
    required: false,
    includeIfNull: false
  )


  final int? observedGeneration;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HorizontalPodAutoscalerStatus &&
     other.currentCPUUtilizationPercentage == currentCPUUtilizationPercentage &&
     other.currentReplicas == currentReplicas &&
     other.desiredReplicas == desiredReplicas &&
     other.lastScaleTime == lastScaleTime &&
     other.observedGeneration == observedGeneration;

  @override
  int get hashCode =>
    currentCPUUtilizationPercentage.hashCode +
    currentReplicas.hashCode +
    desiredReplicas.hashCode +
    lastScaleTime.hashCode +
    observedGeneration.hashCode;

  factory V1HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json) => _$V1HorizontalPodAutoscalerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1HorizontalPodAutoscalerStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

