//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_resource_policy_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3ResourcePolicyRule {
  /// Returns a new [V1beta3ResourcePolicyRule] instance.
  V1beta3ResourcePolicyRule({

    required  this.apiGroups,

     this.clusterScope,

     this.namespaces,

    required  this.resources,

    required  this.verbs,
  });

      /// `apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required.
  @JsonKey(
    
    name: r'apiGroups',
    required: true,
    includeIfNull: false
  )


  final List<String> apiGroups;



      /// `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
  @JsonKey(
    
    name: r'clusterScope',
    required: false,
    includeIfNull: false
  )


  final bool? clusterScope;



      /// `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
  @JsonKey(
    
    name: r'namespaces',
    required: false,
    includeIfNull: false
  )


  final List<String>? namespaces;



      /// `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", \"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.
  @JsonKey(
    
    name: r'resources',
    required: true,
    includeIfNull: false
  )


  final List<String> resources;



      /// `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required.
  @JsonKey(
    
    name: r'verbs',
    required: true,
    includeIfNull: false
  )


  final List<String> verbs;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3ResourcePolicyRule &&
     other.apiGroups == apiGroups &&
     other.clusterScope == clusterScope &&
     other.namespaces == namespaces &&
     other.resources == resources &&
     other.verbs == verbs;

  @override
  int get hashCode =>
    apiGroups.hashCode +
    clusterScope.hashCode +
    namespaces.hashCode +
    resources.hashCode +
    verbs.hashCode;

  factory V1beta3ResourcePolicyRule.fromJson(Map<String, dynamic> json) => _$V1beta3ResourcePolicyRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3ResourcePolicyRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

