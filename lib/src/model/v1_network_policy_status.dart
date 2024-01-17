//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_network_policy_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NetworkPolicyStatus {
  /// Returns a new [V1NetworkPolicyStatus] instance.
  V1NetworkPolicyStatus({

     this.conditions,
  });

      /// conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1Condition>? conditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NetworkPolicyStatus &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    conditions.hashCode;

  factory V1NetworkPolicyStatus.fromJson(Map<String, dynamic> json) => _$V1NetworkPolicyStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1NetworkPolicyStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

