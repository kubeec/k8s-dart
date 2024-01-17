//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_scope_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_quota_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceQuotaSpec {
  /// Returns a new [V1ResourceQuotaSpec] instance.
  V1ResourceQuotaSpec({

     this.hard,

     this.scopeSelector,

     this.scopes,
  });

      /// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/
  @JsonKey(
    
    name: r'hard',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? hard;



  @JsonKey(
    
    name: r'scopeSelector',
    required: false,
    includeIfNull: false
  )


  final V1ScopeSelector? scopeSelector;



      /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  @JsonKey(
    
    name: r'scopes',
    required: false,
    includeIfNull: false
  )


  final List<String>? scopes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceQuotaSpec &&
     other.hard == hard &&
     other.scopeSelector == scopeSelector &&
     other.scopes == scopes;

  @override
  int get hashCode =>
    hard.hashCode +
    scopeSelector.hashCode +
    scopes.hashCode;

  factory V1ResourceQuotaSpec.fromJson(Map<String, dynamic> json) => _$V1ResourceQuotaSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceQuotaSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

