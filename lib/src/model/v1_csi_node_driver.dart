//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_volume_node_resources.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_csi_node_driver.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CSINodeDriver {
  /// Returns a new [V1CSINodeDriver] instance.
  V1CSINodeDriver({

     this.allocatable,

    required  this.name,

    required  this.nodeID,

     this.topologyKeys,
  });

  @JsonKey(
    
    name: r'allocatable',
    required: false,
    includeIfNull: false
  )


  final V1VolumeNodeResources? allocatable;



      /// name represents the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



      /// nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required.
  @JsonKey(
    
    name: r'nodeID',
    required: true,
    includeIfNull: false
  )


  final String nodeID;



      /// topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. \"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
  @JsonKey(
    
    name: r'topologyKeys',
    required: false,
    includeIfNull: false
  )


  final List<String>? topologyKeys;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CSINodeDriver &&
     other.allocatable == allocatable &&
     other.name == name &&
     other.nodeID == nodeID &&
     other.topologyKeys == topologyKeys;

  @override
  int get hashCode =>
    allocatable.hashCode +
    name.hashCode +
    nodeID.hashCode +
    topologyKeys.hashCode;

  factory V1CSINodeDriver.fromJson(Map<String, dynamic> json) => _$V1CSINodeDriverFromJson(json);

  Map<String, dynamic> toJson() => _$V1CSINodeDriverToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

