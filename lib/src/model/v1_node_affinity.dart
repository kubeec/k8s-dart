//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector.dart';
import 'package:k8s/src/model/v1_preferred_scheduling_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_affinity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeAffinity {
  /// Returns a new [V1NodeAffinity] instance.
  V1NodeAffinity({

     this.preferredDuringSchedulingIgnoredDuringExecution,

     this.requiredDuringSchedulingIgnoredDuringExecution,
  });

      /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  @JsonKey(
    
    name: r'preferredDuringSchedulingIgnoredDuringExecution',
    required: false,
    includeIfNull: false
  )


  final List<V1PreferredSchedulingTerm>? preferredDuringSchedulingIgnoredDuringExecution;



  @JsonKey(
    
    name: r'requiredDuringSchedulingIgnoredDuringExecution',
    required: false,
    includeIfNull: false
  )


  final V1NodeSelector? requiredDuringSchedulingIgnoredDuringExecution;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeAffinity &&
     other.preferredDuringSchedulingIgnoredDuringExecution == preferredDuringSchedulingIgnoredDuringExecution &&
     other.requiredDuringSchedulingIgnoredDuringExecution == requiredDuringSchedulingIgnoredDuringExecution;

  @override
  int get hashCode =>
    preferredDuringSchedulingIgnoredDuringExecution.hashCode +
    requiredDuringSchedulingIgnoredDuringExecution.hashCode;

  factory V1NodeAffinity.fromJson(Map<String, dynamic> json) => _$V1NodeAffinityFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeAffinityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

