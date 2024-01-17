//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_policy_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PolicyRule {
  /// Returns a new [V1PolicyRule] instance.
  V1PolicyRule({

     this.apiGroups,

     this.nonResourceURLs,

     this.resourceNames,

     this.resources,

    required  this.verbs,
  });

      /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. \"\" represents the core API group and \"*\" represents all API groups.
  @JsonKey(
    
    name: r'apiGroups',
    required: false,
    includeIfNull: false
  )


  final List<String>? apiGroups;



      /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as \"/api\"),  but not both.
  @JsonKey(
    
    name: r'nonResourceURLs',
    required: false,
    includeIfNull: false
  )


  final List<String>? nonResourceURLs;



      /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  @JsonKey(
    
    name: r'resourceNames',
    required: false,
    includeIfNull: false
  )


  final List<String>? resourceNames;



      /// Resources is a list of resources this rule applies to. '*' represents all resources.
  @JsonKey(
    
    name: r'resources',
    required: false,
    includeIfNull: false
  )


  final List<String>? resources;



      /// Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
  @JsonKey(
    
    name: r'verbs',
    required: true,
    includeIfNull: false
  )


  final List<String> verbs;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PolicyRule &&
     other.apiGroups == apiGroups &&
     other.nonResourceURLs == nonResourceURLs &&
     other.resourceNames == resourceNames &&
     other.resources == resources &&
     other.verbs == verbs;

  @override
  int get hashCode =>
    apiGroups.hashCode +
    nonResourceURLs.hashCode +
    resourceNames.hashCode +
    resources.hashCode +
    verbs.hashCode;

  factory V1PolicyRule.fromJson(Map<String, dynamic> json) => _$V1PolicyRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1PolicyRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

