//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_topology_selector_label_requirement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_topology_selector_term.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TopologySelectorTerm {
  /// Returns a new [V1TopologySelectorTerm] instance.
  V1TopologySelectorTerm({

     this.matchLabelExpressions,
  });

      /// A list of topology selector requirements by labels.
  @JsonKey(
    
    name: r'matchLabelExpressions',
    required: false,
    includeIfNull: false
  )


  final List<V1TopologySelectorLabelRequirement>? matchLabelExpressions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TopologySelectorTerm &&
     other.matchLabelExpressions == matchLabelExpressions;

  @override
  int get hashCode =>
    matchLabelExpressions.hashCode;

  factory V1TopologySelectorTerm.fromJson(Map<String, dynamic> json) => _$V1TopologySelectorTermFromJson(json);

  Map<String, dynamic> toJson() => _$V1TopologySelectorTermToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

