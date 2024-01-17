//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_cross_version_object_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_horizontal_pod_autoscaler_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HorizontalPodAutoscalerSpec {
  /// Returns a new [V1HorizontalPodAutoscalerSpec] instance.
  V1HorizontalPodAutoscalerSpec({

    required  this.maxReplicas,

     this.minReplicas,

    required  this.scaleTargetRef,

     this.targetCPUUtilizationPercentage,
  });

      /// maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  @JsonKey(
    
    name: r'maxReplicas',
    required: true,
    includeIfNull: false
  )


  final int maxReplicas;



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


  final V1CrossVersionObjectReference scaleTargetRef;



      /// targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  @JsonKey(
    
    name: r'targetCPUUtilizationPercentage',
    required: false,
    includeIfNull: false
  )


  final int? targetCPUUtilizationPercentage;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HorizontalPodAutoscalerSpec &&
     other.maxReplicas == maxReplicas &&
     other.minReplicas == minReplicas &&
     other.scaleTargetRef == scaleTargetRef &&
     other.targetCPUUtilizationPercentage == targetCPUUtilizationPercentage;

  @override
  int get hashCode =>
    maxReplicas.hashCode +
    minReplicas.hashCode +
    scaleTargetRef.hashCode +
    targetCPUUtilizationPercentage.hashCode;

  factory V1HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json) => _$V1HorizontalPodAutoscalerSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1HorizontalPodAutoscalerSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

