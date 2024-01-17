//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_scoped_resource_selector_requirement.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ScopedResourceSelectorRequirement {
  /// Returns a new [V1ScopedResourceSelectorRequirement] instance.
  V1ScopedResourceSelectorRequirement({

    required  this.operator_,

    required  this.scopeName,

     this.values,
  });

      /// Represents a scope's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist.
  @JsonKey(
    
    name: r'operator',
    required: true,
    includeIfNull: false
  )


  final String operator_;



      /// The name of the scope that the selector applies to.
  @JsonKey(
    
    name: r'scopeName',
    required: true,
    includeIfNull: false
  )


  final String scopeName;



      /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  @JsonKey(
    
    name: r'values',
    required: false,
    includeIfNull: false
  )


  final List<String>? values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ScopedResourceSelectorRequirement &&
     other.operator_ == operator_ &&
     other.scopeName == scopeName &&
     other.values == values;

  @override
  int get hashCode =>
    operator_.hashCode +
    scopeName.hashCode +
    values.hashCode;

  factory V1ScopedResourceSelectorRequirement.fromJson(Map<String, dynamic> json) => _$V1ScopedResourceSelectorRequirementFromJson(json);

  Map<String, dynamic> toJson() => _$V1ScopedResourceSelectorRequirementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

