//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiCoreV1PodSpec
void main() {
  // final instance = IoK8sApiCoreV1PodSpec();

  group('test IoK8sApiCoreV1PodSpec', () {
    // Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
    // int activeDeadlineSeconds
    test('to test the property `activeDeadlineSeconds`', () async {
      // TODO
    });

    // IoK8sApiCoreV1Affinity affinity
    test('to test the property `affinity`', () async {
      // TODO
    });

    // AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    // bool automountServiceAccountToken
    test('to test the property `automountServiceAccountToken`', () async {
      // TODO
    });

    // List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    // List<IoK8sApiCoreV1Container> containers (default value: const [])
    test('to test the property `containers`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodDNSConfig dnsConfig
    test('to test the property `dnsConfig`', () async {
      // TODO
    });

    // Set DNS policy for the pod. Defaults to \"ClusterFirst\". Valid values are 'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.  
    // String dnsPolicy
    test('to test the property `dnsPolicy`', () async {
      // TODO
    });

    // EnableServiceLinks indicates whether information about services should be injected into pod's environment variables, matching the syntax of Docker links. Optional: Defaults to true.
    // bool enableServiceLinks
    test('to test the property `enableServiceLinks`', () async {
      // TODO
    });

    // List of ephemeral containers run in this pod. Ephemeral containers may be run in an existing pod to perform user-initiated actions such as debugging. This list cannot be specified when creating a pod, and it cannot be modified by updating the pod spec. In order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers subresource.
    // List<IoK8sApiCoreV1EphemeralContainer> ephemeralContainers (default value: const [])
    test('to test the property `ephemeralContainers`', () async {
      // TODO
    });

    // HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    // List<IoK8sApiCoreV1HostAlias> hostAliases (default value: const [])
    test('to test the property `hostAliases`', () async {
      // TODO
    });

    // Use the host's ipc namespace. Optional: Default to false.
    // bool hostIPC
    test('to test the property `hostIPC`', () async {
      // TODO
    });

    // Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    // bool hostNetwork
    test('to test the property `hostNetwork`', () async {
      // TODO
    });

    // Use the host's pid namespace. Optional: Default to false.
    // bool hostPID
    test('to test the property `hostPID`', () async {
      // TODO
    });

    // Use the host's user namespace. Optional: Default to true. If set to true or not present, the pod will be run in the host user namespace, useful for when the pod needs a feature only available to the host user namespace, such as loading a kernel module with CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is useful for mitigating container breakout vulnerabilities even allowing users to run their containers as root without actually having root privileges on the host. This field is alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
    // bool hostUsers
    test('to test the property `hostUsers`', () async {
      // TODO
    });

    // Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. More info: https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
    // List<IoK8sApiCoreV1LocalObjectReference> imagePullSecrets (default value: const [])
    test('to test the property `imagePullSecrets`', () async {
      // TODO
    });

    // List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
    // List<IoK8sApiCoreV1Container> initContainers (default value: const [])
    test('to test the property `initContainers`', () async {
      // TODO
    });

    // NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    // String nodeName
    test('to test the property `nodeName`', () async {
      // TODO
    });

    // NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
    // Map<String, String> nodeSelector (default value: const {})
    test('to test the property `nodeSelector`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodOS os
    test('to test the property `os`', () async {
      // TODO
    });

    // Overhead represents the resource overhead associated with running a pod for a given RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass admission controller. If the RuntimeClass admission controller is enabled, overhead must not be set in Pod create requests. The RuntimeClass admission controller will reject Pod create requests which have the overhead already set. If RuntimeClass is configured and selected in the PodSpec, Overhead will be set to the value defined in the corresponding RuntimeClass, otherwise it will remain unset and treated as zero. More info: https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
    // Map<String, String> overhead (default value: const {})
    test('to test the property `overhead`', () async {
      // TODO
    });

    // PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
    // String preemptionPolicy
    test('to test the property `preemptionPolicy`', () async {
      // TODO
    });

    // The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
    // int priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // If specified, indicates the pod's priority. \"system-node-critical\" and \"system-cluster-critical\" are two special keywords which indicate the highest priorities with the former being the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
    // String priorityClassName
    test('to test the property `priorityClassName`', () async {
      // TODO
    });

    // If specified, all readiness gates will be evaluated for pod readiness. A pod is ready when all its containers are ready AND all conditions specified in the readiness gates have status equal to \"True\" More info: https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
    // List<IoK8sApiCoreV1PodReadinessGate> readinessGates (default value: const [])
    test('to test the property `readinessGates`', () async {
      // TODO
    });

    // ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod is allowed to start. The resources will be made available to those containers which consume them by name.  This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.  This field is immutable.
    // List<IoK8sApiCoreV1PodResourceClaim> resourceClaims (default value: const [])
    test('to test the property `resourceClaims`', () async {
      // TODO
    });

    // Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy  
    // String restartPolicy
    test('to test the property `restartPolicy`', () async {
      // TODO
    });

    // RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should be used to run this pod.  If no RuntimeClass resource matches the named class, the pod will not be run. If unset or empty, the \"legacy\" RuntimeClass will be used, which is an implicit class with an empty definition that uses the default runtime handler. More info: https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
    // String runtimeClassName
    test('to test the property `runtimeClassName`', () async {
      // TODO
    });

    // If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    // String schedulerName
    test('to test the property `schedulerName`', () async {
      // TODO
    });

    // SchedulingGates is an opaque list of values that if specified will block scheduling the pod. More info:  https://git.k8s.io/enhancements/keps/sig-scheduling/3521-pod-scheduling-readiness.  This is an alpha-level feature enabled by PodSchedulingReadiness feature gate.
    // List<IoK8sApiCoreV1PodSchedulingGate> schedulingGates (default value: const [])
    test('to test the property `schedulingGates`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodSecurityContext securityContext
    test('to test the property `securityContext`', () async {
      // TODO
    });

    // DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    // String serviceAccount
    test('to test the property `serviceAccount`', () async {
      // TODO
    });

    // ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
    // String serviceAccountName
    test('to test the property `serviceAccountName`', () async {
      // TODO
    });

    // If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf name (the default). In Linux containers, this means setting the FQDN in the hostname field of the kernel (the nodename field of struct utsname). In Windows containers, this means setting the registry value of hostname for the registry key HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Services\\Tcpip\\Parameters to FQDN. If a pod does not have FQDN, this has no effect. Default to false.
    // bool setHostnameAsFQDN
    test('to test the property `setHostnameAsFQDN`', () async {
      // TODO
    });

    // Share a single process namespace between all of the containers in a pod. When this is set containers will be able to view and signal processes from other containers in the same pod, and the first process in each container will not be assigned PID 1. HostPID and ShareProcessNamespace cannot both be set. Optional: Default to false.
    // bool shareProcessNamespace
    test('to test the property `shareProcessNamespace`', () async {
      // TODO
    });

    // If specified, the fully qualified Pod hostname will be \"<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>\". If not specified, the pod will not have a domainname at all.
    // String subdomain
    test('to test the property `subdomain`', () async {
      // TODO
    });

    // Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    // int terminationGracePeriodSeconds
    test('to test the property `terminationGracePeriodSeconds`', () async {
      // TODO
    });

    // If specified, the pod's tolerations.
    // List<IoK8sApiCoreV1Toleration> tolerations (default value: const [])
    test('to test the property `tolerations`', () async {
      // TODO
    });

    // TopologySpreadConstraints describes how a group of pods ought to spread across topology domains. Scheduler will schedule pods in a way which abides by the constraints. All topologySpreadConstraints are ANDed.
    // List<IoK8sApiCoreV1TopologySpreadConstraint> topologySpreadConstraints (default value: const [])
    test('to test the property `topologySpreadConstraints`', () async {
      // TODO
    });

    // List of volumes that can be mounted by containers belonging to the pod. More info: https://kubernetes.io/docs/concepts/storage/volumes
    // List<IoK8sApiCoreV1Volume> volumes (default value: const [])
    test('to test the property `volumes`', () async {
      // TODO
    });


  });

}
