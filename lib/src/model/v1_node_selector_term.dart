//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector_requirement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_selector_term.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeSelectorTerm {
  /// Returns a new [V1NodeSelectorTerm] instance.
  V1NodeSelectorTerm({

     this.matchExpressions,

     this.matchFields,
  });

      /// A list of node selector requirements by node's labels.
  @JsonKey(
    
    name: r'matchExpressions',
    required: false,
    includeIfNull: false
  )


  final List<V1NodeSelectorRequirement>? matchExpressions;



      /// A list of node selector requirements by node's fields.
  @JsonKey(
    
    name: r'matchFields',
    required: false,
    includeIfNull: false
  )


  final List<V1NodeSelectorRequirement>? matchFields;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeSelectorTerm &&
     other.matchExpressions == matchExpressions &&
     other.matchFields == matchFields;

  @override
  int get hashCode =>
    matchExpressions.hashCode +
    matchFields.hashCode;

  factory V1NodeSelectorTerm.fromJson(Map<String, dynamic> json) => _$V1NodeSelectorTermFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeSelectorTermToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

