//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_hpa_scaling_rules.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_horizontal_pod_autoscaler_behavior.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2HorizontalPodAutoscalerBehavior {
  /// Returns a new [V2HorizontalPodAutoscalerBehavior] instance.
  V2HorizontalPodAutoscalerBehavior({

     this.scaleDown,

     this.scaleUp,
  });

  @JsonKey(
    
    name: r'scaleDown',
    required: false,
    includeIfNull: false
  )


  final V2HPAScalingRules? scaleDown;



  @JsonKey(
    
    name: r'scaleUp',
    required: false,
    includeIfNull: false
  )


  final V2HPAScalingRules? scaleUp;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2HorizontalPodAutoscalerBehavior &&
     other.scaleDown == scaleDown &&
     other.scaleUp == scaleUp;

  @override
  int get hashCode =>
    scaleDown.hashCode +
    scaleUp.hashCode;

  factory V2HorizontalPodAutoscalerBehavior.fromJson(Map<String, dynamic> json) => _$V2HorizontalPodAutoscalerBehaviorFromJson(json);

  Map<String, dynamic> toJson() => _$V2HorizontalPodAutoscalerBehaviorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

