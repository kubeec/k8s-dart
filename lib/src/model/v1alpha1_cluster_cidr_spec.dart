//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_cluster_cidr_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ClusterCIDRSpec {
  /// Returns a new [V1alpha1ClusterCIDRSpec] instance.
  V1alpha1ClusterCIDRSpec({

     this.ipv4,

     this.ipv6,

     this.nodeSelector,

    required  this.perNodeHostBits,
  });

      /// ipv4 defines an IPv4 IP block in CIDR notation(e.g. \"10.0.0.0/8\"). At least one of ipv4 and ipv6 must be specified. This field is immutable.
  @JsonKey(
    
    name: r'ipv4',
    required: false,
    includeIfNull: false
  )


  final String? ipv4;



      /// ipv6 defines an IPv6 IP block in CIDR notation(e.g. \"2001:db8::/64\"). At least one of ipv4 and ipv6 must be specified. This field is immutable.
  @JsonKey(
    
    name: r'ipv6',
    required: false,
    includeIfNull: false
  )


  final String? ipv6;



  @JsonKey(
    
    name: r'nodeSelector',
    required: false,
    includeIfNull: false
  )


  final V1NodeSelector? nodeSelector;



      /// perNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
  @JsonKey(
    
    name: r'perNodeHostBits',
    required: true,
    includeIfNull: false
  )


  final int perNodeHostBits;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ClusterCIDRSpec &&
     other.ipv4 == ipv4 &&
     other.ipv6 == ipv6 &&
     other.nodeSelector == nodeSelector &&
     other.perNodeHostBits == perNodeHostBits;

  @override
  int get hashCode =>
    ipv4.hashCode +
    ipv6.hashCode +
    nodeSelector.hashCode +
    perNodeHostBits.hashCode;

  factory V1alpha1ClusterCIDRSpec.fromJson(Map<String, dynamic> json) => _$V1alpha1ClusterCIDRSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ClusterCIDRSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

