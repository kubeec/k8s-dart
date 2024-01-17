//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_aggregation_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1AggregationRule {
  /// Returns a new [V1AggregationRule] instance.
  V1AggregationRule({

     this.clusterRoleSelectors,
  });

      /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules. If any of the selectors match, then the ClusterRole's permissions will be added
  @JsonKey(
    
    name: r'clusterRoleSelectors',
    required: false,
    includeIfNull: false
  )


  final List<V1LabelSelector>? clusterRoleSelectors;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1AggregationRule &&
     other.clusterRoleSelectors == clusterRoleSelectors;

  @override
  int get hashCode =>
    clusterRoleSelectors.hashCode;

  factory V1AggregationRule.fromJson(Map<String, dynamic> json) => _$V1AggregationRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1AggregationRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

