//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_scoped_resource_selector_requirement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_scope_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ScopeSelector {
  /// Returns a new [V1ScopeSelector] instance.
  V1ScopeSelector({

     this.matchExpressions,
  });

      /// A list of scope selector requirements by scope of the resources.
  @JsonKey(
    
    name: r'matchExpressions',
    required: false,
    includeIfNull: false
  )


  final List<V1ScopedResourceSelectorRequirement>? matchExpressions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ScopeSelector &&
     other.matchExpressions == matchExpressions;

  @override
  int get hashCode =>
    matchExpressions.hashCode;

  factory V1ScopeSelector.fromJson(Map<String, dynamic> json) => _$V1ScopeSelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1ScopeSelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

