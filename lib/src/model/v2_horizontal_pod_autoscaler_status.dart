//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_condition.dart';
import 'package:k8s/src/model/v2_metric_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_horizontal_pod_autoscaler_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2HorizontalPodAutoscalerStatus {
  /// Returns a new [V2HorizontalPodAutoscalerStatus] instance.
  V2HorizontalPodAutoscalerStatus({

     this.conditions,

     this.currentMetrics,

     this.currentReplicas,

    required  this.desiredReplicas,

     this.lastScaleTime,

     this.observedGeneration,
  });

      /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V2HorizontalPodAutoscalerCondition>? conditions;



      /// currentMetrics is the last read state of the metrics used by this autoscaler.
  @JsonKey(
    
    name: r'currentMetrics',
    required: false,
    includeIfNull: false
  )


  final List<V2MetricStatus>? currentMetrics;



      /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  @JsonKey(
    
    name: r'currentReplicas',
    required: false,
    includeIfNull: false
  )


  final int? currentReplicas;



      /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  @JsonKey(
    
    name: r'desiredReplicas',
    required: true,
    includeIfNull: false
  )


  final int desiredReplicas;



      /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods, used by the autoscaler to control how often the number of pods is changed.
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
  bool operator ==(Object other) => identical(this, other) || other is V2HorizontalPodAutoscalerStatus &&
     other.conditions == conditions &&
     other.currentMetrics == currentMetrics &&
     other.currentReplicas == currentReplicas &&
     other.desiredReplicas == desiredReplicas &&
     other.lastScaleTime == lastScaleTime &&
     other.observedGeneration == observedGeneration;

  @override
  int get hashCode =>
    conditions.hashCode +
    currentMetrics.hashCode +
    currentReplicas.hashCode +
    desiredReplicas.hashCode +
    lastScaleTime.hashCode +
    observedGeneration.hashCode;

  factory V2HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json) => _$V2HorizontalPodAutoscalerStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V2HorizontalPodAutoscalerStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

