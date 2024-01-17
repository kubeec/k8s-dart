//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector_requirement.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_label_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1LabelSelector {
  /// Returns a new [V1LabelSelector] instance.
  V1LabelSelector({

     this.matchExpressions,

     this.matchLabels,
  });

      /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  @JsonKey(
    
    name: r'matchExpressions',
    required: false,
    includeIfNull: false
  )


  final List<V1LabelSelectorRequirement>? matchExpressions;



      /// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is \"key\", the operator is \"In\", and the values array contains only \"value\". The requirements are ANDed.
  @JsonKey(
    
    name: r'matchLabels',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? matchLabels;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1LabelSelector &&
     other.matchExpressions == matchExpressions &&
     other.matchLabels == matchLabels;

  @override
  int get hashCode =>
    matchExpressions.hashCode +
    matchLabels.hashCode;

  factory V1LabelSelector.fromJson(Map<String, dynamic> json) => _$V1LabelSelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1LabelSelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

