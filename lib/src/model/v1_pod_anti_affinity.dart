//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_weighted_pod_affinity_term.dart';
import 'package:k8s/src/model/v1_pod_affinity_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_anti_affinity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodAntiAffinity {
  /// Returns a new [V1PodAntiAffinity] instance.
  V1PodAntiAffinity({

     this.preferredDuringSchedulingIgnoredDuringExecution,

     this.requiredDuringSchedulingIgnoredDuringExecution,
  });

      /// The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  @JsonKey(
    
    name: r'preferredDuringSchedulingIgnoredDuringExecution',
    required: false,
    includeIfNull: false
  )


  final List<V1WeightedPodAffinityTerm>? preferredDuringSchedulingIgnoredDuringExecution;



      /// If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  @JsonKey(
    
    name: r'requiredDuringSchedulingIgnoredDuringExecution',
    required: false,
    includeIfNull: false
  )


  final List<V1PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodAntiAffinity &&
     other.preferredDuringSchedulingIgnoredDuringExecution == preferredDuringSchedulingIgnoredDuringExecution &&
     other.requiredDuringSchedulingIgnoredDuringExecution == requiredDuringSchedulingIgnoredDuringExecution;

  @override
  int get hashCode =>
    preferredDuringSchedulingIgnoredDuringExecution.hashCode +
    requiredDuringSchedulingIgnoredDuringExecution.hashCode;

  factory V1PodAntiAffinity.fromJson(Map<String, dynamic> json) => _$V1PodAntiAffinityFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodAntiAffinityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

