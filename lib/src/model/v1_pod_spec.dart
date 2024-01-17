//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_readiness_gate.dart';
import 'package:k8s/src/model/v1_pod_scheduling_gate.dart';
import 'package:k8s/src/model/v1_container.dart';
import 'package:k8s/src/model/v1_pod_dns_config.dart';
import 'package:k8s/src/model/v1_pod_resource_claim.dart';
import 'package:k8s/src/model/v1_host_alias.dart';
import 'package:k8s/src/model/v1_local_object_reference.dart';
import 'package:k8s/src/model/v1_toleration.dart';
import 'package:k8s/src/model/v1_topology_spread_constraint.dart';
import 'package:k8s/src/model/v1_volume.dart';
import 'package:k8s/src/model/v1_ephemeral_container.dart';
import 'package:k8s/src/model/v1_affinity.dart';
import 'package:k8s/src/model/v1_pod_security_context.dart';
import 'package:k8s/src/model/v1_pod_os.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodSpec {
  /// Returns a new [V1PodSpec] instance.
  V1PodSpec({

     this.activeDeadlineSeconds,

     this.affinity,

     this.automountServiceAccountToken,

    required  this.containers,

     this.dnsConfig,

     this.dnsPolicy,

     this.enableServiceLinks,

     this.ephemeralContainers,

     this.hostAliases,

     this.hostIPC,

     this.hostNetwork,

     this.hostPID,

     this.hostUsers,

     this.hostname,

     this.imagePullSecrets,

     this.initContainers,

     this.nodeName,

     this.nodeSelector,

     this.os,

     this.overhead,

     this.preemptionPolicy,

     this.priority,

     this.priorityClassName,

     this.readinessGates,

     this.resourceClaims,

     this.restartPolicy,

     this.runtimeClassName,

     this.schedulerName,

     this.schedulingGates,

     this.securityContext,

     this.serviceAccount,

     this.serviceAccountName,

     this.setHostnameAsFQDN,

     this.shareProcessNamespace,

     this.subdomain,

     this.terminationGracePeriodSeconds,

     this.tolerations,

     this.topologySpreadConstraints,

     this.volumes,
  });

      /// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  @JsonKey(
    
    name: r'activeDeadlineSeconds',
    required: false,
    includeIfNull: false
  )


  final int? activeDeadlineSeconds;



  @JsonKey(
    
    name: r'affinity',
    required: false,
    includeIfNull: false
  )


  final V1Affinity? affinity;



      /// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  @JsonKey(
    
    name: r'automountServiceAccountToken',
    required: false,
    includeIfNull: false
  )


  final bool? automountServiceAccountToken;



      /// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  @JsonKey(
    
    name: r'containers',
    required: true,
    includeIfNull: false
  )


  final List<V1Container> containers;



  @JsonKey(
    
    name: r'dnsConfig',
    required: false,
    includeIfNull: false
  )


  final V1PodDNSConfig? dnsConfig;



      /// Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  @JsonKey(
    
    name: r'dnsPolicy',
    required: false,
    includeIfNull: false
  )


  final String? dnsPolicy;



      /// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  @JsonKey(
    
    name: r'enableServiceLinks',
    required: false,
    includeIfNull: false
  )


  final bool? enableServiceLinks;



      /// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  @JsonKey(
    
    name: r'ephemeralContainers',
    required: false,
    includeIfNull: false
  )


  final List<V1EphemeralContainer>? ephemeralContainers;



      /// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
  @JsonKey(
    
    name: r'hostAliases',
    required: false,
    includeIfNull: false
  )


  final List<V1HostAlias>? hostAliases;



      /// Use the host's ipc namespace. Optional: Default to false.
  @JsonKey(
    
    name: r'hostIPC',
    required: false,
    includeIfNull: false
  )


  final bool? hostIPC;



      /// Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
  @JsonKey(
    
    name: r'hostNetwork',
    required: false,
    includeIfNull: false
  )


  final bool? hostNetwork;



      /// Use the host's pid namespace. Optional: Default to false.
  @JsonKey(
    
    name: r'hostPID',
    required: false,
    includeIfNull: false
  )


  final bool? hostPID;



      /// Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
  @JsonKey(
    
    name: r'hostUsers',
    required: false,
    includeIfNull: false
  )


  final bool? hostUsers;



      /// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  @JsonKey(
    
    name: r'hostname',
    required: false,
    includeIfNull: false
  )


  final String? hostname;



      /// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
  @JsonKey(
    
    name: r'imagePullSecrets',
    required: false,
    includeIfNull: false
  )


  final List<V1LocalObjectReference>? imagePullSecrets;



      /// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  @JsonKey(
    
    name: r'initContainers',
    required: false,
    includeIfNull: false
  )


  final List<V1Container>? initContainers;



      /// NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
  @JsonKey(
    
    name: r'nodeName',
    required: false,
    includeIfNull: false
  )


  final String? nodeName;



      /// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  @JsonKey(
    
    name: r'nodeSelector',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? nodeSelector;



  @JsonKey(
    
    name: r'os',
    required: false,
    includeIfNull: false
  )


  final V1PodOS? os;



      /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
  @JsonKey(
    
    name: r'overhead',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? overhead;



      /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  @JsonKey(
    
    name: r'preemptionPolicy',
    required: false,
    includeIfNull: false
  )


  final String? preemptionPolicy;



      /// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false
  )


  final int? priority;



      /// If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  @JsonKey(
    
    name: r'priorityClassName',
    required: false,
    includeIfNull: false
  )


  final String? priorityClassName;



      /// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
  @JsonKey(
    
    name: r'readinessGates',
    required: false,
    includeIfNull: false
  )


  final List<V1PodReadinessGate>? readinessGates;



      /// ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable.
  @JsonKey(
    
    name: r'resourceClaims',
    required: false,
    includeIfNull: false
  )


  final List<V1PodResourceClaim>? resourceClaims;



      /// Restart policy for all containers within the pod. One of Always, OnFailure, Never. In some contexts, only a subset of those values may be permitted. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
  @JsonKey(
    
    name: r'restartPolicy',
    required: false,
    includeIfNull: false
  )


  final String? restartPolicy;



      /// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
  @JsonKey(
    
    name: r'runtimeClassName',
    required: false,
    includeIfNull: false
  )


  final String? runtimeClassName;



      /// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  @JsonKey(
    
    name: r'schedulerName',
    required: false,
    includeIfNull: false
  )


  final String? schedulerName;



      /// SchedulingGates is an opaque list of values that if specified will block scheduling the pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and the scheduler will not attempt to schedule the pod.  SchedulingGates can only be set at pod creation time, and be removed only afterwards.  This is a beta feature enabled by the PodSchedulingReadiness feature gate.
  @JsonKey(
    
    name: r'schedulingGates',
    required: false,
    includeIfNull: false
  )


  final List<V1PodSchedulingGate>? schedulingGates;



  @JsonKey(
    
    name: r'securityContext',
    required: false,
    includeIfNull: false
  )


  final V1PodSecurityContext? securityContext;



      /// DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  @JsonKey(
    
    name: r'serviceAccount',
    required: false,
    includeIfNull: false
  )


  final String? serviceAccount;



      /// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  @JsonKey(
    
    name: r'serviceAccountName',
    required: false,
    includeIfNull: false
  )


  final String? serviceAccountName;



      /// If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  @JsonKey(
    
    name: r'setHostnameAsFQDN',
    required: false,
    includeIfNull: false
  )


  final bool? setHostnameAsFQDN;



      /// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  @JsonKey(
    
    name: r'shareProcessNamespace',
    required: false,
    includeIfNull: false
  )


  final bool? shareProcessNamespace;



      /// If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.
  @JsonKey(
    
    name: r'subdomain',
    required: false,
    includeIfNull: false
  )


  final String? subdomain;



      /// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  @JsonKey(
    
    name: r'terminationGracePeriodSeconds',
    required: false,
    includeIfNull: false
  )


  final int? terminationGracePeriodSeconds;



      /// If specified, the pod's tolerations.
  @JsonKey(
    
    name: r'tolerations',
    required: false,
    includeIfNull: false
  )


  final List<V1Toleration>? tolerations;



      /// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  @JsonKey(
    
    name: r'topologySpreadConstraints',
    required: false,
    includeIfNull: false
  )


  final List<V1TopologySpreadConstraint>? topologySpreadConstraints;



      /// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
  @JsonKey(
    
    name: r'volumes',
    required: false,
    includeIfNull: false
  )


  final List<V1Volume>? volumes;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodSpec &&
     other.activeDeadlineSeconds == activeDeadlineSeconds &&
     other.affinity == affinity &&
     other.automountServiceAccountToken == automountServiceAccountToken &&
     other.containers == containers &&
     other.dnsConfig == dnsConfig &&
     other.dnsPolicy == dnsPolicy &&
     other.enableServiceLinks == enableServiceLinks &&
     other.ephemeralContainers == ephemeralContainers &&
     other.hostAliases == hostAliases &&
     other.hostIPC == hostIPC &&
     other.hostNetwork == hostNetwork &&
     other.hostPID == hostPID &&
     other.hostUsers == hostUsers &&
     other.hostname == hostname &&
     other.imagePullSecrets == imagePullSecrets &&
     other.initContainers == initContainers &&
     other.nodeName == nodeName &&
     other.nodeSelector == nodeSelector &&
     other.os == os &&
     other.overhead == overhead &&
     other.preemptionPolicy == preemptionPolicy &&
     other.priority == priority &&
     other.priorityClassName == priorityClassName &&
     other.readinessGates == readinessGates &&
     other.resourceClaims == resourceClaims &&
     other.restartPolicy == restartPolicy &&
     other.runtimeClassName == runtimeClassName &&
     other.schedulerName == schedulerName &&
     other.schedulingGates == schedulingGates &&
     other.securityContext == securityContext &&
     other.serviceAccount == serviceAccount &&
     other.serviceAccountName == serviceAccountName &&
     other.setHostnameAsFQDN == setHostnameAsFQDN &&
     other.shareProcessNamespace == shareProcessNamespace &&
     other.subdomain == subdomain &&
     other.terminationGracePeriodSeconds == terminationGracePeriodSeconds &&
     other.tolerations == tolerations &&
     other.topologySpreadConstraints == topologySpreadConstraints &&
     other.volumes == volumes;

  @override
  int get hashCode =>
    activeDeadlineSeconds.hashCode +
    affinity.hashCode +
    automountServiceAccountToken.hashCode +
    containers.hashCode +
    dnsConfig.hashCode +
    dnsPolicy.hashCode +
    enableServiceLinks.hashCode +
    ephemeralContainers.hashCode +
    hostAliases.hashCode +
    hostIPC.hashCode +
    hostNetwork.hashCode +
    hostPID.hashCode +
    hostUsers.hashCode +
    hostname.hashCode +
    imagePullSecrets.hashCode +
    initContainers.hashCode +
    nodeName.hashCode +
    nodeSelector.hashCode +
    os.hashCode +
    overhead.hashCode +
    preemptionPolicy.hashCode +
    priority.hashCode +
    priorityClassName.hashCode +
    readinessGates.hashCode +
    resourceClaims.hashCode +
    restartPolicy.hashCode +
    runtimeClassName.hashCode +
    schedulerName.hashCode +
    schedulingGates.hashCode +
    securityContext.hashCode +
    serviceAccount.hashCode +
    serviceAccountName.hashCode +
    setHostnameAsFQDN.hashCode +
    shareProcessNamespace.hashCode +
    subdomain.hashCode +
    terminationGracePeriodSeconds.hashCode +
    tolerations.hashCode +
    topologySpreadConstraints.hashCode +
    volumes.hashCode;

  factory V1PodSpec.fromJson(Map<String, dynamic> json) => _$V1PodSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

