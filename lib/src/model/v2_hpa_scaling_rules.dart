//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v2_hpa_scaling_policy.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v2_hpa_scaling_rules.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2HPAScalingRules {
  /// Returns a new [V2HPAScalingRules] instance.
  V2HPAScalingRules({

     this.policies,

     this.selectPolicy,

     this.stabilizationWindowSeconds,
  });

      /// policies is a list of potential scaling polices which can be used during scaling. At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
  @JsonKey(
    
    name: r'policies',
    required: false,
    includeIfNull: false
  )


  final List<V2HPAScalingPolicy>? policies;



      /// selectPolicy is used to specify which policy should be used. If not set, the default value Max is used.
  @JsonKey(
    
    name: r'selectPolicy',
    required: false,
    includeIfNull: false
  )


  final String? selectPolicy;



      /// stabilizationWindowSeconds is the number of seconds for which past recommendations should be considered while scaling up or scaling down. StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  @JsonKey(
    
    name: r'stabilizationWindowSeconds',
    required: false,
    includeIfNull: false
  )


  final int? stabilizationWindowSeconds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2HPAScalingRules &&
     other.policies == policies &&
     other.selectPolicy == selectPolicy &&
     other.stabilizationWindowSeconds == stabilizationWindowSeconds;

  @override
  int get hashCode =>
    policies.hashCode +
    selectPolicy.hashCode +
    stabilizationWindowSeconds.hashCode;

  factory V2HPAScalingRules.fromJson(Map<String, dynamic> json) => _$V2HPAScalingRulesFromJson(json);

  Map<String, dynamic> toJson() => _$V2HPAScalingRulesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

