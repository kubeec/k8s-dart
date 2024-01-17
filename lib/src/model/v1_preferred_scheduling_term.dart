//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_preferred_scheduling_term.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PreferredSchedulingTerm {
  /// Returns a new [V1PreferredSchedulingTerm] instance.
  V1PreferredSchedulingTerm({

    required  this.preference,

    required  this.weight,
  });

  @JsonKey(
    
    name: r'preference',
    required: true,
    includeIfNull: false
  )


  final V1NodeSelectorTerm preference;



      /// Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
  @JsonKey(
    
    name: r'weight',
    required: true,
    includeIfNull: false
  )


  final int weight;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PreferredSchedulingTerm &&
     other.preference == preference &&
     other.weight == weight;

  @override
  int get hashCode =>
    preference.hashCode +
    weight.hashCode;

  factory V1PreferredSchedulingTerm.fromJson(Map<String, dynamic> json) => _$V1PreferredSchedulingTermFromJson(json);

  Map<String, dynamic> toJson() => _$V1PreferredSchedulingTermToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

