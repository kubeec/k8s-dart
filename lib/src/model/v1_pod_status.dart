//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_container_status.dart';
import 'package:k8s/src/model/v1_pod_condition.dart';
import 'package:k8s/src/model/v1_pod_ip.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodStatus {
  /// Returns a new [V1PodStatus] instance.
  V1PodStatus({

     this.conditions,

     this.containerStatuses,

     this.ephemeralContainerStatuses,

     this.hostIP,

     this.initContainerStatuses,

     this.message,

     this.nominatedNodeName,

     this.phase,

     this.podIP,

     this.podIPs,

     this.qosClass,

     this.reason,

     this.resize,

     this.startTime,
  });

      /// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1PodCondition>? conditions;



      /// The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  @JsonKey(
    
    name: r'containerStatuses',
    required: false,
    includeIfNull: false
  )


  final List<V1ContainerStatus>? containerStatuses;



      /// Status for any ephemeral containers that have run in this pod.
  @JsonKey(
    
    name: r'ephemeralContainerStatuses',
    required: false,
    includeIfNull: false
  )


  final List<V1ContainerStatus>? ephemeralContainerStatuses;



      /// IP address of the host to which the pod is assigned. Empty if not yet scheduled.
  @JsonKey(
    
    name: r'hostIP',
    required: false,
    includeIfNull: false
  )


  final String? hostIP;



      /// The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  @JsonKey(
    
    name: r'initContainerStatuses',
    required: false,
    includeIfNull: false
  )


  final List<V1ContainerStatus>? initContainerStatuses;



      /// A human readable message indicating details about why the pod is in this condition.
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false
  )


  final String? message;



      /// nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  @JsonKey(
    
    name: r'nominatedNodeName',
    required: false,
    includeIfNull: false
  )


  final String? nominatedNodeName;



      /// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:  Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.  More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase
  @JsonKey(
    
    name: r'phase',
    required: false,
    includeIfNull: false
  )


  final String? phase;



      /// IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  @JsonKey(
    
    name: r'podIP',
    required: false,
    includeIfNull: false
  )


  final String? podIP;



      /// podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  @JsonKey(
    
    name: r'podIPs',
    required: false,
    includeIfNull: false
  )


  final List<V1PodIP>? podIPs;



      /// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/#quality-of-service-classes
  @JsonKey(
    
    name: r'qosClass',
    required: false,
    includeIfNull: false
  )


  final String? qosClass;



      /// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false
  )


  final String? reason;



      /// Status of resources resize desired for pod's containers. It is empty if no resources resize is pending. Any changes to container resources will automatically set this to \"Proposed\"
  @JsonKey(
    
    name: r'resize',
    required: false,
    includeIfNull: false
  )


  final String? resize;



      /// RFC 3339 date and time at which the object was acknowledged by the Kubelet. This is before the Kubelet pulled the container image(s) for the pod.
  @JsonKey(
    
    name: r'startTime',
    required: false,
    includeIfNull: false
  )


  final DateTime? startTime;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodStatus &&
     other.conditions == conditions &&
     other.containerStatuses == containerStatuses &&
     other.ephemeralContainerStatuses == ephemeralContainerStatuses &&
     other.hostIP == hostIP &&
     other.initContainerStatuses == initContainerStatuses &&
     other.message == message &&
     other.nominatedNodeName == nominatedNodeName &&
     other.phase == phase &&
     other.podIP == podIP &&
     other.podIPs == podIPs &&
     other.qosClass == qosClass &&
     other.reason == reason &&
     other.resize == resize &&
     other.startTime == startTime;

  @override
  int get hashCode =>
    conditions.hashCode +
    containerStatuses.hashCode +
    ephemeralContainerStatuses.hashCode +
    hostIP.hashCode +
    initContainerStatuses.hashCode +
    message.hashCode +
    nominatedNodeName.hashCode +
    phase.hashCode +
    podIP.hashCode +
    podIPs.hashCode +
    qosClass.hashCode +
    reason.hashCode +
    resize.hashCode +
    startTime.hashCode;

  factory V1PodStatus.fromJson(Map<String, dynamic> json) => _$V1PodStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

