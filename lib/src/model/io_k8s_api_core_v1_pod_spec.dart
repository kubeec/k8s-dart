//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_scheduling_gate.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_security_context.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_local_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_affinity.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_readiness_gate.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_ephemeral_container.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_os.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_volume.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_topology_spread_constraint.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_host_alias.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_dns_config.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_resource_claim.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_toleration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_spec.g.dart';

/// PodSpec is a description of a pod.
///
/// Properties:
/// * [activeDeadlineSeconds] - Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
/// * [affinity] 
/// * [automountServiceAccountToken] - AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
/// * [containers] - List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
/// * [dnsConfig] 
/// * [dnsPolicy] - Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.  
/// * [enableServiceLinks] - EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
/// * [ephemeralContainers] - List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
/// * [hostAliases] - HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
/// * [hostIPC] - Use the host's ipc namespace. Optional: Default to false.
/// * [hostNetwork] - Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
/// * [hostPID] - Use the host's pid namespace. Optional: Default to false.
/// * [hostUsers] - Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
/// * [hostname] - Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
/// * [imagePullSecrets] - ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
/// * [initContainers] - List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
/// * [nodeName] - NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
/// * [nodeSelector] - NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
/// * [os] 
/// * [overhead] - Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
/// * [preemptionPolicy] - PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
/// * [priority] - The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
/// * [priorityClassName] - If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
/// * [readinessGates] - If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
/// * [resourceClaims] - ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable.
/// * [restartPolicy] - Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy  
/// * [runtimeClassName] - RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
/// * [schedulerName] - If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
/// * [schedulingGates] - SchedulingGates is an opaque list of values that if specified will block scheduling the pod. More info:  https://git.k8s.io/enhancements/keps/sig-scheduling/3521-pod-scheduling-readiness.  This is an alpha-level feature enabled by PodSchedulingReadiness feature gate.
/// * [securityContext] 
/// * [serviceAccount] - DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
/// * [serviceAccountName] - ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
/// * [setHostnameAsFQDN] - If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
/// * [shareProcessNamespace] - Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
/// * [subdomain] - If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.
/// * [terminationGracePeriodSeconds] - Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
/// * [tolerations] - If specified, the pod's tolerations.
/// * [topologySpreadConstraints] - TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
/// * [volumes] - List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
@BuiltValue()
abstract class IoK8sApiCoreV1PodSpec implements Built<IoK8sApiCoreV1PodSpec, IoK8sApiCoreV1PodSpecBuilder> {
  /// Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  @BuiltValueField(wireName: r'activeDeadlineSeconds')
  int? get activeDeadlineSeconds;

  @BuiltValueField(wireName: r'affinity')
  IoK8sApiCoreV1Affinity? get affinity;

  /// AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  @BuiltValueField(wireName: r'automountServiceAccountToken')
  bool? get automountServiceAccountToken;

  /// List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
  @BuiltValueField(wireName: r'containers')
  BuiltList<IoK8sApiCoreV1Container> get containers;

  @BuiltValueField(wireName: r'dnsConfig')
  IoK8sApiCoreV1PodDNSConfig? get dnsConfig;

  /// Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.  
  @BuiltValueField(wireName: r'dnsPolicy')
  String? get dnsPolicy;

  /// EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
  @BuiltValueField(wireName: r'enableServiceLinks')
  bool? get enableServiceLinks;

  /// List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
  @BuiltValueField(wireName: r'ephemeralContainers')
  BuiltList<IoK8sApiCoreV1EphemeralContainer>? get ephemeralContainers;

  /// HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
  @BuiltValueField(wireName: r'hostAliases')
  BuiltList<IoK8sApiCoreV1HostAlias>? get hostAliases;

  /// Use the host's ipc namespace. Optional: Default to false.
  @BuiltValueField(wireName: r'hostIPC')
  bool? get hostIPC;

  /// Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
  @BuiltValueField(wireName: r'hostNetwork')
  bool? get hostNetwork;

  /// Use the host's pid namespace. Optional: Default to false.
  @BuiltValueField(wireName: r'hostPID')
  bool? get hostPID;

  /// Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
  @BuiltValueField(wireName: r'hostUsers')
  bool? get hostUsers;

  /// Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  @BuiltValueField(wireName: r'hostname')
  String? get hostname;

  /// ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
  @BuiltValueField(wireName: r'imagePullSecrets')
  BuiltList<IoK8sApiCoreV1LocalObjectReference>? get imagePullSecrets;

  /// List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
  @BuiltValueField(wireName: r'initContainers')
  BuiltList<IoK8sApiCoreV1Container>? get initContainers;

  /// NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
  @BuiltValueField(wireName: r'nodeName')
  String? get nodeName;

  /// NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
  @BuiltValueField(wireName: r'nodeSelector')
  BuiltMap<String, String>? get nodeSelector;

  @BuiltValueField(wireName: r'os')
  IoK8sApiCoreV1PodOS? get os;

  /// Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
  @BuiltValueField(wireName: r'overhead')
  BuiltMap<String, String>? get overhead;

  /// PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  @BuiltValueField(wireName: r'preemptionPolicy')
  String? get preemptionPolicy;

  /// The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
  @BuiltValueField(wireName: r'priority')
  int? get priority;

  /// If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
  @BuiltValueField(wireName: r'priorityClassName')
  String? get priorityClassName;

  /// If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
  @BuiltValueField(wireName: r'readinessGates')
  BuiltList<IoK8sApiCoreV1PodReadinessGate>? get readinessGates;

  /// ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable.
  @BuiltValueField(wireName: r'resourceClaims')
  BuiltList<IoK8sApiCoreV1PodResourceClaim>? get resourceClaims;

  /// Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy  
  @BuiltValueField(wireName: r'restartPolicy')
  String? get restartPolicy;

  /// RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
  @BuiltValueField(wireName: r'runtimeClassName')
  String? get runtimeClassName;

  /// If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  @BuiltValueField(wireName: r'schedulerName')
  String? get schedulerName;

  /// SchedulingGates is an opaque list of values that if specified will block scheduling the pod. More info:  https://git.k8s.io/enhancements/keps/sig-scheduling/3521-pod-scheduling-readiness.  This is an alpha-level feature enabled by PodSchedulingReadiness feature gate.
  @BuiltValueField(wireName: r'schedulingGates')
  BuiltList<IoK8sApiCoreV1PodSchedulingGate>? get schedulingGates;

  @BuiltValueField(wireName: r'securityContext')
  IoK8sApiCoreV1PodSecurityContext? get securityContext;

  /// DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  @BuiltValueField(wireName: r'serviceAccount')
  String? get serviceAccount;

  /// ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
  @BuiltValueField(wireName: r'serviceAccountName')
  String? get serviceAccountName;

  /// If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
  @BuiltValueField(wireName: r'setHostnameAsFQDN')
  bool? get setHostnameAsFQDN;

  /// Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
  @BuiltValueField(wireName: r'shareProcessNamespace')
  bool? get shareProcessNamespace;

  /// If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.
  @BuiltValueField(wireName: r'subdomain')
  String? get subdomain;

  /// Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  @BuiltValueField(wireName: r'terminationGracePeriodSeconds')
  int? get terminationGracePeriodSeconds;

  /// If specified, the pod's tolerations.
  @BuiltValueField(wireName: r'tolerations')
  BuiltList<IoK8sApiCoreV1Toleration>? get tolerations;

  /// TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
  @BuiltValueField(wireName: r'topologySpreadConstraints')
  BuiltList<IoK8sApiCoreV1TopologySpreadConstraint>? get topologySpreadConstraints;

  /// List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
  @BuiltValueField(wireName: r'volumes')
  BuiltList<IoK8sApiCoreV1Volume>? get volumes;

  IoK8sApiCoreV1PodSpec._();

  factory IoK8sApiCoreV1PodSpec([void updates(IoK8sApiCoreV1PodSpecBuilder b)]) = _$IoK8sApiCoreV1PodSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodSpec> get serializer => _$IoK8sApiCoreV1PodSpecSerializer();
}

class _$IoK8sApiCoreV1PodSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodSpec, _$IoK8sApiCoreV1PodSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1PodSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.activeDeadlineSeconds != null) {
      yield r'activeDeadlineSeconds';
      yield serializers.serialize(
        object.activeDeadlineSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.affinity != null) {
      yield r'affinity';
      yield serializers.serialize(
        object.affinity,
        specifiedType: const FullType(IoK8sApiCoreV1Affinity),
      );
    }
    if (object.automountServiceAccountToken != null) {
      yield r'automountServiceAccountToken';
      yield serializers.serialize(
        object.automountServiceAccountToken,
        specifiedType: const FullType(bool),
      );
    }
    yield r'containers';
    yield serializers.serialize(
      object.containers,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Container)]),
    );
    if (object.dnsConfig != null) {
      yield r'dnsConfig';
      yield serializers.serialize(
        object.dnsConfig,
        specifiedType: const FullType(IoK8sApiCoreV1PodDNSConfig),
      );
    }
    if (object.dnsPolicy != null) {
      yield r'dnsPolicy';
      yield serializers.serialize(
        object.dnsPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.enableServiceLinks != null) {
      yield r'enableServiceLinks';
      yield serializers.serialize(
        object.enableServiceLinks,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ephemeralContainers != null) {
      yield r'ephemeralContainers';
      yield serializers.serialize(
        object.ephemeralContainers,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EphemeralContainer)]),
      );
    }
    if (object.hostAliases != null) {
      yield r'hostAliases';
      yield serializers.serialize(
        object.hostAliases,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1HostAlias)]),
      );
    }
    if (object.hostIPC != null) {
      yield r'hostIPC';
      yield serializers.serialize(
        object.hostIPC,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hostNetwork != null) {
      yield r'hostNetwork';
      yield serializers.serialize(
        object.hostNetwork,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hostPID != null) {
      yield r'hostPID';
      yield serializers.serialize(
        object.hostPID,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hostUsers != null) {
      yield r'hostUsers';
      yield serializers.serialize(
        object.hostUsers,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hostname != null) {
      yield r'hostname';
      yield serializers.serialize(
        object.hostname,
        specifiedType: const FullType(String),
      );
    }
    if (object.imagePullSecrets != null) {
      yield r'imagePullSecrets';
      yield serializers.serialize(
        object.imagePullSecrets,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1LocalObjectReference)]),
      );
    }
    if (object.initContainers != null) {
      yield r'initContainers';
      yield serializers.serialize(
        object.initContainers,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Container)]),
      );
    }
    if (object.nodeName != null) {
      yield r'nodeName';
      yield serializers.serialize(
        object.nodeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.nodeSelector != null) {
      yield r'nodeSelector';
      yield serializers.serialize(
        object.nodeSelector,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.os != null) {
      yield r'os';
      yield serializers.serialize(
        object.os,
        specifiedType: const FullType(IoK8sApiCoreV1PodOS),
      );
    }
    if (object.overhead != null) {
      yield r'overhead';
      yield serializers.serialize(
        object.overhead,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.preemptionPolicy != null) {
      yield r'preemptionPolicy';
      yield serializers.serialize(
        object.preemptionPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.priority != null) {
      yield r'priority';
      yield serializers.serialize(
        object.priority,
        specifiedType: const FullType(int),
      );
    }
    if (object.priorityClassName != null) {
      yield r'priorityClassName';
      yield serializers.serialize(
        object.priorityClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.readinessGates != null) {
      yield r'readinessGates';
      yield serializers.serialize(
        object.readinessGates,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodReadinessGate)]),
      );
    }
    if (object.resourceClaims != null) {
      yield r'resourceClaims';
      yield serializers.serialize(
        object.resourceClaims,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodResourceClaim)]),
      );
    }
    if (object.restartPolicy != null) {
      yield r'restartPolicy';
      yield serializers.serialize(
        object.restartPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.runtimeClassName != null) {
      yield r'runtimeClassName';
      yield serializers.serialize(
        object.runtimeClassName,
        specifiedType: const FullType(String),
      );
    }
    if (object.schedulerName != null) {
      yield r'schedulerName';
      yield serializers.serialize(
        object.schedulerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.schedulingGates != null) {
      yield r'schedulingGates';
      yield serializers.serialize(
        object.schedulingGates,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodSchedulingGate)]),
      );
    }
    if (object.securityContext != null) {
      yield r'securityContext';
      yield serializers.serialize(
        object.securityContext,
        specifiedType: const FullType(IoK8sApiCoreV1PodSecurityContext),
      );
    }
    if (object.serviceAccount != null) {
      yield r'serviceAccount';
      yield serializers.serialize(
        object.serviceAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceAccountName != null) {
      yield r'serviceAccountName';
      yield serializers.serialize(
        object.serviceAccountName,
        specifiedType: const FullType(String),
      );
    }
    if (object.setHostnameAsFQDN != null) {
      yield r'setHostnameAsFQDN';
      yield serializers.serialize(
        object.setHostnameAsFQDN,
        specifiedType: const FullType(bool),
      );
    }
    if (object.shareProcessNamespace != null) {
      yield r'shareProcessNamespace';
      yield serializers.serialize(
        object.shareProcessNamespace,
        specifiedType: const FullType(bool),
      );
    }
    if (object.subdomain != null) {
      yield r'subdomain';
      yield serializers.serialize(
        object.subdomain,
        specifiedType: const FullType(String),
      );
    }
    if (object.terminationGracePeriodSeconds != null) {
      yield r'terminationGracePeriodSeconds';
      yield serializers.serialize(
        object.terminationGracePeriodSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.tolerations != null) {
      yield r'tolerations';
      yield serializers.serialize(
        object.tolerations,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Toleration)]),
      );
    }
    if (object.topologySpreadConstraints != null) {
      yield r'topologySpreadConstraints';
      yield serializers.serialize(
        object.topologySpreadConstraints,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1TopologySpreadConstraint)]),
      );
    }
    if (object.volumes != null) {
      yield r'volumes';
      yield serializers.serialize(
        object.volumes,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Volume)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activeDeadlineSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.activeDeadlineSeconds = valueDes;
          break;
        case r'affinity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1Affinity),
          ) as IoK8sApiCoreV1Affinity;
          result.affinity.replace(valueDes);
          break;
        case r'automountServiceAccountToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.automountServiceAccountToken = valueDes;
          break;
        case r'containers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Container)]),
          ) as BuiltList<IoK8sApiCoreV1Container>;
          result.containers.replace(valueDes);
          break;
        case r'dnsConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodDNSConfig),
          ) as IoK8sApiCoreV1PodDNSConfig;
          result.dnsConfig.replace(valueDes);
          break;
        case r'dnsPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dnsPolicy = valueDes;
          break;
        case r'enableServiceLinks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enableServiceLinks = valueDes;
          break;
        case r'ephemeralContainers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1EphemeralContainer)]),
          ) as BuiltList<IoK8sApiCoreV1EphemeralContainer>;
          result.ephemeralContainers.replace(valueDes);
          break;
        case r'hostAliases':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1HostAlias)]),
          ) as BuiltList<IoK8sApiCoreV1HostAlias>;
          result.hostAliases.replace(valueDes);
          break;
        case r'hostIPC':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hostIPC = valueDes;
          break;
        case r'hostNetwork':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hostNetwork = valueDes;
          break;
        case r'hostPID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hostPID = valueDes;
          break;
        case r'hostUsers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hostUsers = valueDes;
          break;
        case r'hostname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostname = valueDes;
          break;
        case r'imagePullSecrets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1LocalObjectReference)]),
          ) as BuiltList<IoK8sApiCoreV1LocalObjectReference>;
          result.imagePullSecrets.replace(valueDes);
          break;
        case r'initContainers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Container)]),
          ) as BuiltList<IoK8sApiCoreV1Container>;
          result.initContainers.replace(valueDes);
          break;
        case r'nodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeName = valueDes;
          break;
        case r'nodeSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.nodeSelector.replace(valueDes);
          break;
        case r'os':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodOS),
          ) as IoK8sApiCoreV1PodOS;
          result.os.replace(valueDes);
          break;
        case r'overhead':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.overhead.replace(valueDes);
          break;
        case r'preemptionPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preemptionPolicy = valueDes;
          break;
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priority = valueDes;
          break;
        case r'priorityClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.priorityClassName = valueDes;
          break;
        case r'readinessGates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodReadinessGate)]),
          ) as BuiltList<IoK8sApiCoreV1PodReadinessGate>;
          result.readinessGates.replace(valueDes);
          break;
        case r'resourceClaims':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodResourceClaim)]),
          ) as BuiltList<IoK8sApiCoreV1PodResourceClaim>;
          result.resourceClaims.replace(valueDes);
          break;
        case r'restartPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restartPolicy = valueDes;
          break;
        case r'runtimeClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.runtimeClassName = valueDes;
          break;
        case r'schedulerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.schedulerName = valueDes;
          break;
        case r'schedulingGates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodSchedulingGate)]),
          ) as BuiltList<IoK8sApiCoreV1PodSchedulingGate>;
          result.schedulingGates.replace(valueDes);
          break;
        case r'securityContext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodSecurityContext),
          ) as IoK8sApiCoreV1PodSecurityContext;
          result.securityContext.replace(valueDes);
          break;
        case r'serviceAccount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceAccount = valueDes;
          break;
        case r'serviceAccountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceAccountName = valueDes;
          break;
        case r'setHostnameAsFQDN':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.setHostnameAsFQDN = valueDes;
          break;
        case r'shareProcessNamespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.shareProcessNamespace = valueDes;
          break;
        case r'subdomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subdomain = valueDes;
          break;
        case r'terminationGracePeriodSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.terminationGracePeriodSeconds = valueDes;
          break;
        case r'tolerations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Toleration)]),
          ) as BuiltList<IoK8sApiCoreV1Toleration>;
          result.tolerations.replace(valueDes);
          break;
        case r'topologySpreadConstraints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1TopologySpreadConstraint)]),
          ) as BuiltList<IoK8sApiCoreV1TopologySpreadConstraint>;
          result.topologySpreadConstraints.replace(valueDes);
          break;
        case r'volumes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Volume)]),
          ) as BuiltList<IoK8sApiCoreV1Volume>;
          result.volumes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodSpecBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

