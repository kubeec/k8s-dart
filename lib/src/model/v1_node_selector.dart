//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeSelector {
  /// Returns a new [V1NodeSelector] instance.
  V1NodeSelector({

    required  this.nodeSelectorTerms,
  });

      /// Required. A list of node selector terms. The terms are ORed.
  @JsonKey(
    
    name: r'nodeSelectorTerms',
    required: true,
    includeIfNull: false
  )


  final List<V1NodeSelectorTerm> nodeSelectorTerms;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeSelector &&
     other.nodeSelectorTerms == nodeSelectorTerms;

  @override
  int get hashCode =>
    nodeSelectorTerms.hashCode;

  factory V1NodeSelector.fromJson(Map<String, dynamic> json) => _$V1NodeSelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeSelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

