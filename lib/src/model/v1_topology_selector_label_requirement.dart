//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_topology_selector_label_requirement.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TopologySelectorLabelRequirement {
  /// Returns a new [V1TopologySelectorLabelRequirement] instance.
  V1TopologySelectorLabelRequirement({

    required  this.key,

    required  this.values,
  });

      /// The label key that the selector applies to.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// An array of string values. One value must match the label to be selected. Each entry in Values is ORed.
  @JsonKey(
    
    name: r'values',
    required: true,
    includeIfNull: false
  )


  final List<String> values;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TopologySelectorLabelRequirement &&
     other.key == key &&
     other.values == values;

  @override
  int get hashCode =>
    key.hashCode +
    values.hashCode;

  factory V1TopologySelectorLabelRequirement.fromJson(Map<String, dynamic> json) => _$V1TopologySelectorLabelRequirementFromJson(json);

  Map<String, dynamic> toJson() => _$V1TopologySelectorLabelRequirementToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

