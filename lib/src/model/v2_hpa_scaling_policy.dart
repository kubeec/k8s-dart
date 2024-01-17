//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v2_hpa_scaling_policy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V2HPAScalingPolicy {
  /// Returns a new [V2HPAScalingPolicy] instance.
  V2HPAScalingPolicy({

    required  this.periodSeconds,

    required  this.type,

    required  this.value,
  });

      /// periodSeconds specifies the window of time for which the policy should hold true. PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  @JsonKey(
    
    name: r'periodSeconds',
    required: true,
    includeIfNull: false
  )


  final int periodSeconds;



      /// type is used to specify the scaling policy.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



      /// value contains the amount of change which is permitted by the policy. It must be greater than zero
  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false
  )


  final int value;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V2HPAScalingPolicy &&
     other.periodSeconds == periodSeconds &&
     other.type == type &&
     other.value == value;

  @override
  int get hashCode =>
    periodSeconds.hashCode +
    type.hashCode +
    value.hashCode;

  factory V2HPAScalingPolicy.fromJson(Map<String, dynamic> json) => _$V2HPAScalingPolicyFromJson(json);

  Map<String, dynamic> toJson() => _$V2HPAScalingPolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

