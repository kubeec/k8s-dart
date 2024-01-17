//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_non_resource_policy_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2NonResourcePolicyRule {
  /// Returns a new [V1beta2NonResourcePolicyRule] instance.
  V1beta2NonResourcePolicyRule({

    required  this.nonResourceURLs,

    required  this.verbs,
  });

      /// `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:   - \"/healthz\" is legal   - \"/hea*\" is illegal   - \"/hea\" is legal but matches nothing   - \"/hea/_*\" also matches nothing   - \"/healthz/_*\" matches all per-component health checks. \"*\" matches all non-resource urls. if it is present, it must be the only entry. Required.
  @JsonKey(
    
    name: r'nonResourceURLs',
    required: true,
    includeIfNull: false
  )


  final List<String> nonResourceURLs;



      /// `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs. If it is present, it must be the only entry. Required.
  @JsonKey(
    
    name: r'verbs',
    required: true,
    includeIfNull: false
  )


  final List<String> verbs;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2NonResourcePolicyRule &&
     other.nonResourceURLs == nonResourceURLs &&
     other.verbs == verbs;

  @override
  int get hashCode =>
    nonResourceURLs.hashCode +
    verbs.hashCode;

  factory V1beta2NonResourcePolicyRule.fromJson(Map<String, dynamic> json) => _$V1beta2NonResourcePolicyRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2NonResourcePolicyRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

