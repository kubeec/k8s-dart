//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_label_selector_requirement.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LabelSelectorRequirement {
  /// Returns a new [V1LabelSelectorRequirement] instance.
  V1LabelSelectorRequirement({

    required  this.key,

    required  this.operator_,

     this.values,
  });

      /// key is the label key that the selector applies to.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
  @JsonKey(
    
    name: r'operator',
    required: true,
    includeIfNull: false
  )


  final String operator_;



      /// values is an array of string values. If the operator is In or NotIn, the values array must be non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. This array is replaced during a strategic merge patch.
  @JsonKey(
    
    name: r'values',
    required: false,
    includeIfNull: false
  )


  final List<String>? values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LabelSelectorRequirement &&
     other.key == key &&
     other.operator_ == operator_ &&
     other.values == values;

  @override
  int get hashCode =>
    key.hashCode +
    operator_.hashCode +
    values.hashCode;

  factory V1LabelSelectorRequirement.fromJson(Map<String, dynamic> json) => _$V1LabelSelectorRequirementFromJson(json);

  Map<String, dynamic> toJson() => _$V1LabelSelectorRequirementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

