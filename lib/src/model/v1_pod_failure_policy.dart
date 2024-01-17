//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_failure_policy_rule.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_failure_policy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodFailurePolicy {
  /// Returns a new [V1PodFailurePolicy] instance.
  V1PodFailurePolicy({

    required  this.rules,
  });

      /// A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod failure, the default handling applies - the counter of pod failures is incremented and it is checked against the backoffLimit. At most 20 elements are allowed.
  @JsonKey(
    
    name: r'rules',
    required: true,
    includeIfNull: false
  )


  final List<V1PodFailurePolicyRule> rules;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodFailurePolicy &&
     other.rules == rules;

  @override
  int get hashCode =>
    rules.hashCode;

  factory V1PodFailurePolicy.fromJson(Map<String, dynamic> json) => _$V1PodFailurePolicyFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodFailurePolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

