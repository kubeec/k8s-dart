//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_named_rule_with_operations.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_match_resources.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1MatchResources {
  /// Returns a new [V1alpha1MatchResources] instance.
  V1alpha1MatchResources({

     this.excludeResourceRules,

     this.matchPolicy,

     this.namespaceSelector,

     this.objectSelector,

     this.resourceRules,
  });

      /// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  @JsonKey(
    
    name: r'excludeResourceRules',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1NamedRuleWithOperations>? excludeResourceRules;



      /// matchPolicy defines how the \"MatchResources\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.  Defaults to \"Equivalent\"
  @JsonKey(
    
    name: r'matchPolicy',
    required: false,
    includeIfNull: false
  )


  final String? matchPolicy;



  @JsonKey(
    
    name: r'namespaceSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? namespaceSelector;



  @JsonKey(
    
    name: r'objectSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? objectSelector;



      /// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
  @JsonKey(
    
    name: r'resourceRules',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1NamedRuleWithOperations>? resourceRules;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1MatchResources &&
     other.excludeResourceRules == excludeResourceRules &&
     other.matchPolicy == matchPolicy &&
     other.namespaceSelector == namespaceSelector &&
     other.objectSelector == objectSelector &&
     other.resourceRules == resourceRules;

  @override
  int get hashCode =>
    excludeResourceRules.hashCode +
    matchPolicy.hashCode +
    namespaceSelector.hashCode +
    objectSelector.hashCode +
    resourceRules.hashCode;

  factory V1alpha1MatchResources.fromJson(Map<String, dynamic> json) => _$V1alpha1MatchResourcesFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1MatchResourcesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

