//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_ip.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_container_status.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_status.g.dart';

/// PodStatus represents information about the status of a pod. Status may trail the actual state of a system, especially if the node that hosts the pod cannot contact the control plane.
///
/// Properties:
/// * [conditions] - Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
/// * [containerStatuses] - The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
/// * [ephemeralContainerStatuses] - Status for any ephemeral containers that have run in this pod.
/// * [hostIP] - IP address of the host to which the pod is assigned. Empty if not yet scheduled.
/// * [initContainerStatuses] - The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
/// * [message] - A human readable message indicating details about why the pod is in this condition.
/// * [nominatedNodeName] - nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
/// * [phase] - The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:  Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.  More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase  
/// * [podIP] - IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
/// * [podIPs] - podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
/// * [qosClass] - The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md  
/// * [reason] - A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
/// * [startTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
@BuiltValue()
abstract class IoK8sApiCoreV1PodStatus implements Built<IoK8sApiCoreV1PodStatus, IoK8sApiCoreV1PodStatusBuilder> {
  /// Current service state of pod. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiCoreV1PodCondition>? get conditions;

  /// The list has one entry per container in the manifest. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  @BuiltValueField(wireName: r'containerStatuses')
  BuiltList<IoK8sApiCoreV1ContainerStatus>? get containerStatuses;

  /// Status for any ephemeral containers that have run in this pod.
  @BuiltValueField(wireName: r'ephemeralContainerStatuses')
  BuiltList<IoK8sApiCoreV1ContainerStatus>? get ephemeralContainerStatuses;

  /// IP address of the host to which the pod is assigned. Empty if not yet scheduled.
  @BuiltValueField(wireName: r'hostIP')
  String? get hostIP;

  /// The list has one entry per init container in the manifest. The most recent successful init container will have ready = true, the most recently started container will have startTime set. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-and-container-status
  @BuiltValueField(wireName: r'initContainerStatuses')
  BuiltList<IoK8sApiCoreV1ContainerStatus>? get initContainerStatuses;

  /// A human readable message indicating details about why the pod is in this condition.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// nominatedNodeName is set only when this pod preempts other pods on the node, but it cannot be scheduled right away as preemption victims receive their graceful termination periods. This field does not guarantee that the pod will be scheduled on this node. Scheduler may decide to place the pod elsewhere if other nodes become available sooner. Scheduler may also decide to give the resources on this node to a higher priority pod that is created after preemption. As a result, this field may be different than PodSpec.nodeName when the pod is scheduled.
  @BuiltValueField(wireName: r'nominatedNodeName')
  String? get nominatedNodeName;

  /// The phase of a Pod is a simple, high-level summary of where the Pod is in its lifecycle. The conditions array, the reason and message fields, and the individual container status arrays contain more detail about the pod's status. There are five possible phase values:  Pending: The pod has been accepted by the Kubernetes system, but one or more of the container images has not been created. This includes time before being scheduled as well as time spent downloading images over the network, which could take a while. Running: The pod has been bound to a node, and all of the containers have been created. At least one container is still running, or is in the process of starting or restarting. Succeeded: All containers in the pod have terminated in success, and will not be restarted. Failed: All containers in the pod have terminated, and at least one container has terminated in failure. The container either exited with non-zero status or was terminated by the system. Unknown: For some reason the state of the pod could not be obtained, typically due to an error in communicating with the host of the pod.  More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-phase  
  @BuiltValueField(wireName: r'phase')
  String? get phase;

  /// IP address allocated to the pod. Routable at least within the cluster. Empty if not yet allocated.
  @BuiltValueField(wireName: r'podIP')
  String? get podIP;

  /// podIPs holds the IP addresses allocated to the pod. If this field is specified, the 0th entry must match the podIP field. Pods may be allocated at most 1 value for each of IPv4 and IPv6. This list is empty if no IPs have been allocated yet.
  @BuiltValueField(wireName: r'podIPs')
  BuiltList<IoK8sApiCoreV1PodIP>? get podIPs;

  /// The Quality of Service (QOS) classification assigned to the pod based on resource requirements See PodQOSClass type for available QOS classes More info: https://git.k8s.io/community/contributors/design-proposals/node/resource-qos.md  
  @BuiltValueField(wireName: r'qosClass')
  String? get qosClass;

  /// A brief CamelCase message indicating details about why the pod is in this state. e.g. 'Evicted'
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'startTime')
  DateTime? get startTime;

  IoK8sApiCoreV1PodStatus._();

  factory IoK8sApiCoreV1PodStatus([void updates(IoK8sApiCoreV1PodStatusBuilder b)]) = _$IoK8sApiCoreV1PodStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodStatus> get serializer => _$IoK8sApiCoreV1PodStatusSerializer();
}

class _$IoK8sApiCoreV1PodStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodStatus, _$IoK8sApiCoreV1PodStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1PodStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodCondition)]),
      );
    }
    if (object.containerStatuses != null) {
      yield r'containerStatuses';
      yield serializers.serialize(
        object.containerStatuses,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerStatus)]),
      );
    }
    if (object.ephemeralContainerStatuses != null) {
      yield r'ephemeralContainerStatuses';
      yield serializers.serialize(
        object.ephemeralContainerStatuses,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerStatus)]),
      );
    }
    if (object.hostIP != null) {
      yield r'hostIP';
      yield serializers.serialize(
        object.hostIP,
        specifiedType: const FullType(String),
      );
    }
    if (object.initContainerStatuses != null) {
      yield r'initContainerStatuses';
      yield serializers.serialize(
        object.initContainerStatuses,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerStatus)]),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.nominatedNodeName != null) {
      yield r'nominatedNodeName';
      yield serializers.serialize(
        object.nominatedNodeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.phase != null) {
      yield r'phase';
      yield serializers.serialize(
        object.phase,
        specifiedType: const FullType(String),
      );
    }
    if (object.podIP != null) {
      yield r'podIP';
      yield serializers.serialize(
        object.podIP,
        specifiedType: const FullType(String),
      );
    }
    if (object.podIPs != null) {
      yield r'podIPs';
      yield serializers.serialize(
        object.podIPs,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodIP)]),
      );
    }
    if (object.qosClass != null) {
      yield r'qosClass';
      yield serializers.serialize(
        object.qosClass,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.startTime != null) {
      yield r'startTime';
      yield serializers.serialize(
        object.startTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodCondition)]),
          ) as BuiltList<IoK8sApiCoreV1PodCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'containerStatuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerStatus)]),
          ) as BuiltList<IoK8sApiCoreV1ContainerStatus>;
          result.containerStatuses.replace(valueDes);
          break;
        case r'ephemeralContainerStatuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerStatus)]),
          ) as BuiltList<IoK8sApiCoreV1ContainerStatus>;
          result.ephemeralContainerStatuses.replace(valueDes);
          break;
        case r'hostIP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hostIP = valueDes;
          break;
        case r'initContainerStatuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerStatus)]),
          ) as BuiltList<IoK8sApiCoreV1ContainerStatus>;
          result.initContainerStatuses.replace(valueDes);
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'nominatedNodeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nominatedNodeName = valueDes;
          break;
        case r'phase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phase = valueDes;
          break;
        case r'podIP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.podIP = valueDes;
          break;
        case r'podIPs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodIP)]),
          ) as BuiltList<IoK8sApiCoreV1PodIP>;
          result.podIPs.replace(valueDes);
          break;
        case r'qosClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.qosClass = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'startTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodStatusBuilder();
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

