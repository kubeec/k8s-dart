//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_horizontal_pod_autoscaler_behavior.dart';
import 'package:k8s/src/model/v2_cross_version_object_reference.dart';
import 'package:k8s/src/model/v2_metric_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_horizontal_pod_autoscaler_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2HorizontalPodAutoscalerSpec {
  /// Returns a new [V2HorizontalPodAutoscalerSpec] instance.
  V2HorizontalPodAutoscalerSpec({

     this.behavior,

    required  this.maxReplicas,

     this.metrics,

     this.minReplicas,

    required  this.scaleTargetRef,
  });

  @JsonKey(
    
    name: r'behavior',
    required: false,
    includeIfNull: false
  )


  final V2HorizontalPodAutoscalerBehavior? behavior;



      /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  @JsonKey(
    
    name: r'maxReplicas',
    required: true,
    includeIfNull: false
  )


  final int maxReplicas;



      /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  @JsonKey(
    
    name: r'metrics',
    required: false,
    includeIfNull: false
  )


  final List<V2MetricSpec>? metrics;



      /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  @JsonKey(
    
    name: r'minReplicas',
    required: false,
    includeIfNull: false
  )


  final int? minReplicas;



  @JsonKey(
    
    name: r'scaleTargetRef',
    required: true,
    includeIfNull: false
  )


  final V2CrossVersionObjectReference scaleTargetRef;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2HorizontalPodAutoscalerSpec &&
     other.behavior == behavior &&
     other.maxReplicas == maxReplicas &&
     other.metrics == metrics &&
     other.minReplicas == minReplicas &&
     other.scaleTargetRef == scaleTargetRef;

  @override
  int get hashCode =>
    behavior.hashCode +
    maxReplicas.hashCode +
    metrics.hashCode +
    minReplicas.hashCode +
    scaleTargetRef.hashCode;

  factory V2HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json) => _$V2HorizontalPodAutoscalerSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V2HorizontalPodAutoscalerSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

