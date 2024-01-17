//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_taint.dart';
import 'package:k8s/src/model/v1_node_config_source.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeSpec {
  /// Returns a new [V1NodeSpec] instance.
  V1NodeSpec({

     this.configSource,

     this.externalID,

     this.podCIDR,

     this.podCIDRs,

     this.providerID,

     this.taints,

     this.unschedulable,
  });

  @JsonKey(
    
    name: r'configSource',
    required: false,
    includeIfNull: false
  )


  final V1NodeConfigSource? configSource;



      /// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  @JsonKey(
    
    name: r'externalID',
    required: false,
    includeIfNull: false
  )


  final String? externalID;



      /// PodCIDR represents the pod IP range assigned to the node.
  @JsonKey(
    
    name: r'podCIDR',
    required: false,
    includeIfNull: false
  )


  final String? podCIDR;



      /// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  @JsonKey(
    
    name: r'podCIDRs',
    required: false,
    includeIfNull: false
  )


  final List<String>? podCIDRs;



      /// ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
  @JsonKey(
    
    name: r'providerID',
    required: false,
    includeIfNull: false
  )


  final String? providerID;



      /// If specified, the node's taints.
  @JsonKey(
    
    name: r'taints',
    required: false,
    includeIfNull: false
  )


  final List<V1Taint>? taints;



      /// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  @JsonKey(
    
    name: r'unschedulable',
    required: false,
    includeIfNull: false
  )


  final bool? unschedulable;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeSpec &&
     other.configSource == configSource &&
     other.externalID == externalID &&
     other.podCIDR == podCIDR &&
     other.podCIDRs == podCIDRs &&
     other.providerID == providerID &&
     other.taints == taints &&
     other.unschedulable == unschedulable;

  @override
  int get hashCode =>
    configSource.hashCode +
    externalID.hashCode +
    podCIDR.hashCode +
    podCIDRs.hashCode +
    providerID.hashCode +
    taints.hashCode +
    unschedulable.hashCode;

  factory V1NodeSpec.fromJson(Map<String, dynamic> json) => _$V1NodeSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

