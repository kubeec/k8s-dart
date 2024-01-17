//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_topology_spread_constraint.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1TopologySpreadConstraint {
  /// Returns a new [V1TopologySpreadConstraint] instance.
  V1TopologySpreadConstraint({

     this.labelSelector,

     this.matchLabelKeys,

    required  this.maxSkew,

     this.minDomains,

     this.nodeAffinityPolicy,

     this.nodeTaintsPolicy,

    required  this.topologyKey,

    required  this.whenUnsatisfiable,
  });

  @JsonKey(
    
    name: r'labelSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? labelSelector;



      /// MatchLabelKeys is a set of pod label keys to select the pods over which spreading will be calculated. The keys are used to lookup values from the incoming pod labels, those key-value labels are ANDed with labelSelector to select the group of existing pods over which spreading will be calculated for the incoming pod. The same key is forbidden to exist in both MatchLabelKeys and LabelSelector. MatchLabelKeys cannot be set when LabelSelector isn't set. Keys that don't exist in the incoming pod labels will be ignored. A null or empty list means only match against labelSelector.  This is a beta field and requires the MatchLabelKeysInPodTopologySpread feature gate to be enabled (enabled by default).
  @JsonKey(
    
    name: r'matchLabelKeys',
    required: false,
    includeIfNull: false
  )


  final List<String>? matchLabelKeys;



      /// MaxSkew describes the degree to which pods may be unevenly distributed. When `whenUnsatisfiable=DoNotSchedule`, it is the maximum permitted difference between the number of matching pods in the target topology and the global minimum. The global minimum is the minimum number of matching pods in an eligible domain or zero if the number of eligible domains is less than MinDomains. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 2/2/1: In this case, the global minimum is 1. | zone1 | zone2 | zone3 | |  P P  |  P P  |   P   | - if MaxSkew is 1, incoming pod can only be scheduled to zone3 to become 2/2/2; scheduling it onto zone1(zone2) would make the ActualSkew(3-1) on zone1(zone2) violate MaxSkew(1). - if MaxSkew is 2, incoming pod can be scheduled onto any zone. When `whenUnsatisfiable=ScheduleAnyway`, it is used to give higher precedence to topologies that satisfy it. It's a required field. Default value is 1 and 0 is not allowed.
  @JsonKey(
    
    name: r'maxSkew',
    required: true,
    includeIfNull: false
  )


  final int maxSkew;



      /// MinDomains indicates a minimum number of eligible domains. When the number of eligible domains with matching topology keys is less than minDomains, Pod Topology Spread treats \"global minimum\" as 0, and then the calculation of Skew is performed. And when the number of eligible domains with matching topology keys equals or greater than minDomains, this value has no effect on scheduling. As a result, when the number of eligible domains is less than minDomains, scheduler won't schedule more than maxSkew Pods to those domains. If value is nil, the constraint behaves as if MinDomains is equal to 1. Valid values are integers greater than 0. When value is not nil, WhenUnsatisfiable must be DoNotSchedule.  For example, in a 3-zone cluster, MaxSkew is set to 2, MinDomains is set to 5 and pods with the same labelSelector spread as 2/2/2: | zone1 | zone2 | zone3 | |  P P  |  P P  |  P P  | The number of domains is less than 5(MinDomains), so \"global minimum\" is treated as 0. In this situation, new pod with the same labelSelector cannot be scheduled, because computed skew will be 3(3 - 0) if new Pod is scheduled to any of the three zones, it will violate MaxSkew.  This is a beta field and requires the MinDomainsInPodTopologySpread feature gate to be enabled (enabled by default).
  @JsonKey(
    
    name: r'minDomains',
    required: false,
    includeIfNull: false
  )


  final int? minDomains;



      /// NodeAffinityPolicy indicates how we will treat Pod's nodeAffinity/nodeSelector when calculating pod topology spread skew. Options are: - Honor: only nodes matching nodeAffinity/nodeSelector are included in the calculations. - Ignore: nodeAffinity/nodeSelector are ignored. All nodes are included in the calculations.  If this value is nil, the behavior is equivalent to the Honor policy. This is a beta-level feature default enabled by the NodeInclusionPolicyInPodTopologySpread feature flag.
  @JsonKey(
    
    name: r'nodeAffinityPolicy',
    required: false,
    includeIfNull: false
  )


  final String? nodeAffinityPolicy;



      /// NodeTaintsPolicy indicates how we will treat node taints when calculating pod topology spread skew. Options are: - Honor: nodes without taints, along with tainted nodes for which the incoming pod has a toleration, are included. - Ignore: node taints are ignored. All nodes are included.  If this value is nil, the behavior is equivalent to the Ignore policy. This is a beta-level feature default enabled by the NodeInclusionPolicyInPodTopologySpread feature flag.
  @JsonKey(
    
    name: r'nodeTaintsPolicy',
    required: false,
    includeIfNull: false
  )


  final String? nodeTaintsPolicy;



      /// TopologyKey is the key of node labels. Nodes that have a label with this key and identical values are considered to be in the same topology. We consider each <key, value> as a \"bucket\", and try to put balanced number of pods into each bucket. We define a domain as a particular instance of a topology. Also, we define an eligible domain as a domain whose nodes meet the requirements of nodeAffinityPolicy and nodeTaintsPolicy. e.g. If TopologyKey is \"kubernetes.io/hostname\", each Node is a domain of that topology. And, if TopologyKey is \"topology.kubernetes.io/zone\", each zone is a domain of that topology. It's a required field.
  @JsonKey(
    
    name: r'topologyKey',
    required: true,
    includeIfNull: false
  )


  final String topologyKey;



      /// WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread constraint. - DoNotSchedule (default) tells the scheduler not to schedule it. - ScheduleAnyway tells the scheduler to schedule the pod in any location,   but giving higher precedence to topologies that would help reduce the   skew. A constraint is considered \"Unsatisfiable\" for an incoming pod if and only if every possible node assignment for that pod would violate \"MaxSkew\" on some topology. For example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector spread as 3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become 3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a required field.
  @JsonKey(
    
    name: r'whenUnsatisfiable',
    required: true,
    includeIfNull: false
  )


  final String whenUnsatisfiable;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1TopologySpreadConstraint &&
     other.labelSelector == labelSelector &&
     other.matchLabelKeys == matchLabelKeys &&
     other.maxSkew == maxSkew &&
     other.minDomains == minDomains &&
     other.nodeAffinityPolicy == nodeAffinityPolicy &&
     other.nodeTaintsPolicy == nodeTaintsPolicy &&
     other.topologyKey == topologyKey &&
     other.whenUnsatisfiable == whenUnsatisfiable;

  @override
  int get hashCode =>
    labelSelector.hashCode +
    matchLabelKeys.hashCode +
    maxSkew.hashCode +
    minDomains.hashCode +
    nodeAffinityPolicy.hashCode +
    nodeTaintsPolicy.hashCode +
    topologyKey.hashCode +
    whenUnsatisfiable.hashCode;

  factory V1TopologySpreadConstraint.fromJson(Map<String, dynamic> json) => _$V1TopologySpreadConstraintFromJson(json);

  Map<String, dynamic> toJson() => _$V1TopologySpreadConstraintToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

