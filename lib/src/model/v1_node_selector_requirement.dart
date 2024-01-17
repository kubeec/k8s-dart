//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_selector_requirement.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeSelectorRequirement {
  /// Returns a new [V1NodeSelectorRequirement] instance.
  V1NodeSelectorRequirement({

    required  this.key,

    required  this.operator_,

     this.values,
  });

      /// The label key that the selector applies to.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// Represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists, DoesNotExist. Gt, and Lt.
  @JsonKey(
    
    name: r'operator',
    required: true,
    includeIfNull: false
  )


  final String operator_;



      /// An array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If the operator is Gt or Lt, the values array must have a single element, which will be interpreted as an integer. This array is replaced during a strategic merge patch.
  @JsonKey(
    
    name: r'values',
    required: false,
    includeIfNull: false
  )


  final List<String>? values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeSelectorRequirement &&
     other.key == key &&
     other.operator_ == operator_ &&
     other.values == values;

  @override
  int get hashCode =>
    key.hashCode +
    operator_.hashCode +
    values.hashCode;

  factory V1NodeSelectorRequirement.fromJson(Map<String, dynamic> json) => _$V1NodeSelectorRequirementFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeSelectorRequirementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

