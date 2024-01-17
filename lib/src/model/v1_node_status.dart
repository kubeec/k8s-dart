//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_attached_volume.dart';
import 'package:k8s/src/model/v1_node_daemon_endpoints.dart';
import 'package:k8s/src/model/v1_container_image.dart';
import 'package:k8s/src/model/v1_node_config_status.dart';
import 'package:k8s/src/model/v1_node_address.dart';
import 'package:k8s/src/model/v1_node_condition.dart';
import 'package:k8s/src/model/v1_node_system_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_node_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NodeStatus {
  /// Returns a new [V1NodeStatus] instance.
  V1NodeStatus({

     this.addresses,

     this.allocatable,

     this.capacity,

     this.conditions,

     this.config,

     this.daemonEndpoints,

     this.images,

     this.nodeInfo,

     this.phase,

     this.volumesAttached,

     this.volumesInUse,
  });

      /// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example. Consumers should assume that addresses can change during the lifetime of a Node. However, there are some exceptions where this may not be possible, such as Pods that inherit a Node's address in its own status or consumers of the downward API (status.hostIP).
  @JsonKey(
    
    name: r'addresses',
    required: false,
    includeIfNull: false
  )


  final List<V1NodeAddress>? addresses;



      /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  @JsonKey(
    
    name: r'allocatable',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? allocatable;



      /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  @JsonKey(
    
    name: r'capacity',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? capacity;



      /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1NodeCondition>? conditions;



  @JsonKey(
    
    name: r'config',
    required: false,
    includeIfNull: false
  )


  final V1NodeConfigStatus? config;



  @JsonKey(
    
    name: r'daemonEndpoints',
    required: false,
    includeIfNull: false
  )


  final V1NodeDaemonEndpoints? daemonEndpoints;



      /// List of container images on this node
  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false
  )


  final List<V1ContainerImage>? images;



  @JsonKey(
    
    name: r'nodeInfo',
    required: false,
    includeIfNull: false
  )


  final V1NodeSystemInfo? nodeInfo;



      /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.
  @JsonKey(
    
    name: r'phase',
    required: false,
    includeIfNull: false
  )


  final String? phase;



      /// List of volumes that are attached to the node.
  @JsonKey(
    
    name: r'volumesAttached',
    required: false,
    includeIfNull: false
  )


  final List<V1AttachedVolume>? volumesAttached;



      /// List of attachable volumes in use (mounted) by the node.
  @JsonKey(
    
    name: r'volumesInUse',
    required: false,
    includeIfNull: false
  )


  final List<String>? volumesInUse;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NodeStatus &&
     other.addresses == addresses &&
     other.allocatable == allocatable &&
     other.capacity == capacity &&
     other.conditions == conditions &&
     other.config == config &&
     other.daemonEndpoints == daemonEndpoints &&
     other.images == images &&
     other.nodeInfo == nodeInfo &&
     other.phase == phase &&
     other.volumesAttached == volumesAttached &&
     other.volumesInUse == volumesInUse;

  @override
  int get hashCode =>
    addresses.hashCode +
    allocatable.hashCode +
    capacity.hashCode +
    conditions.hashCode +
    config.hashCode +
    daemonEndpoints.hashCode +
    images.hashCode +
    nodeInfo.hashCode +
    phase.hashCode +
    volumesAttached.hashCode +
    volumesInUse.hashCode;

  factory V1NodeStatus.fromJson(Map<String, dynamic> json) => _$V1NodeStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1NodeStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

