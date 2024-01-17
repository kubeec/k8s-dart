//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceRule {
  /// Returns a new [V1ResourceRule] instance.
  V1ResourceRule({

     this.apiGroups,

     this.resourceNames,

     this.resources,

    required  this.verbs,
  });

      /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.
  @JsonKey(
    
    name: r'apiGroups',
    required: false,
    includeIfNull: false
  )


  final List<String>? apiGroups;



      /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.
  @JsonKey(
    
    name: r'resourceNames',
    required: false,
    includeIfNull: false
  )


  final List<String>? resourceNames;



      /// Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.  \"*_/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.
  @JsonKey(
    
    name: r'resources',
    required: false,
    includeIfNull: false
  )


  final List<String>? resources;



      /// Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
  @JsonKey(
    
    name: r'verbs',
    required: true,
    includeIfNull: false
  )


  final List<String> verbs;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceRule &&
     other.apiGroups == apiGroups &&
     other.resourceNames == resourceNames &&
     other.resources == resources &&
     other.verbs == verbs;

  @override
  int get hashCode =>
    apiGroups.hashCode +
    resourceNames.hashCode +
    resources.hashCode +
    verbs.hashCode;

  factory V1ResourceRule.fromJson(Map<String, dynamic> json) => _$V1ResourceRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

