//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_container_image.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_attached_volume.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_system_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_daemon_endpoints.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_condition.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_address.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_node_config_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_status.g.dart';

/// NodeStatus is information about the current status of a node.
///
/// Properties:
/// * [addresses] - List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example.
/// * [allocatable] - Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
/// * [capacity] - Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
/// * [conditions] - Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
/// * [config] 
/// * [daemonEndpoints] 
/// * [images] - List of container images on this node
/// * [nodeInfo] 
/// * [phase] - NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.  
/// * [volumesAttached] - List of volumes that are attached to the node.
/// * [volumesInUse] - List of attachable volumes in use (mounted) by the node.
@BuiltValue()
abstract class IoK8sApiCoreV1NodeStatus implements Built<IoK8sApiCoreV1NodeStatus, IoK8sApiCoreV1NodeStatusBuilder> {
  /// List of addresses reachable to the node. Queried from cloud provider, if available. More info: https://kubernetes.io/docs/concepts/nodes/node/#addresses Note: This field is declared as mergeable, but the merge key is not sufficiently unique, which can cause data corruption when it is merged. Callers should instead use a full-replacement patch. See https://pr.k8s.io/79391 for an example.
  @BuiltValueField(wireName: r'addresses')
  BuiltList<IoK8sApiCoreV1NodeAddress>? get addresses;

  /// Allocatable represents the resources of a node that are available for scheduling. Defaults to Capacity.
  @BuiltValueField(wireName: r'allocatable')
  BuiltMap<String, String>? get allocatable;

  /// Capacity represents the total resources of a node. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity
  @BuiltValueField(wireName: r'capacity')
  BuiltMap<String, String>? get capacity;

  /// Conditions is an array of current observed node conditions. More info: https://kubernetes.io/docs/concepts/nodes/node/#condition
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiCoreV1NodeCondition>? get conditions;

  @BuiltValueField(wireName: r'config')
  IoK8sApiCoreV1NodeConfigStatus? get config;

  @BuiltValueField(wireName: r'daemonEndpoints')
  IoK8sApiCoreV1NodeDaemonEndpoints? get daemonEndpoints;

  /// List of container images on this node
  @BuiltValueField(wireName: r'images')
  BuiltList<IoK8sApiCoreV1ContainerImage>? get images;

  @BuiltValueField(wireName: r'nodeInfo')
  IoK8sApiCoreV1NodeSystemInfo? get nodeInfo;

  /// NodePhase is the recently observed lifecycle phase of the node. More info: https://kubernetes.io/docs/concepts/nodes/node/#phase The field is never populated, and now is deprecated.  
  @BuiltValueField(wireName: r'phase')
  String? get phase;

  /// List of volumes that are attached to the node.
  @BuiltValueField(wireName: r'volumesAttached')
  BuiltList<IoK8sApiCoreV1AttachedVolume>? get volumesAttached;

  /// List of attachable volumes in use (mounted) by the node.
  @BuiltValueField(wireName: r'volumesInUse')
  BuiltList<String>? get volumesInUse;

  IoK8sApiCoreV1NodeStatus._();

  factory IoK8sApiCoreV1NodeStatus([void updates(IoK8sApiCoreV1NodeStatusBuilder b)]) = _$IoK8sApiCoreV1NodeStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeStatus> get serializer => _$IoK8sApiCoreV1NodeStatusSerializer();
}

class _$IoK8sApiCoreV1NodeStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeStatus, _$IoK8sApiCoreV1NodeStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.addresses != null) {
      yield r'addresses';
      yield serializers.serialize(
        object.addresses,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeAddress)]),
      );
    }
    if (object.allocatable != null) {
      yield r'allocatable';
      yield serializers.serialize(
        object.allocatable,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.capacity != null) {
      yield r'capacity';
      yield serializers.serialize(
        object.capacity,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeCondition)]),
      );
    }
    if (object.config != null) {
      yield r'config';
      yield serializers.serialize(
        object.config,
        specifiedType: const FullType(IoK8sApiCoreV1NodeConfigStatus),
      );
    }
    if (object.daemonEndpoints != null) {
      yield r'daemonEndpoints';
      yield serializers.serialize(
        object.daemonEndpoints,
        specifiedType: const FullType(IoK8sApiCoreV1NodeDaemonEndpoints),
      );
    }
    if (object.images != null) {
      yield r'images';
      yield serializers.serialize(
        object.images,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerImage)]),
      );
    }
    if (object.nodeInfo != null) {
      yield r'nodeInfo';
      yield serializers.serialize(
        object.nodeInfo,
        specifiedType: const FullType(IoK8sApiCoreV1NodeSystemInfo),
      );
    }
    if (object.phase != null) {
      yield r'phase';
      yield serializers.serialize(
        object.phase,
        specifiedType: const FullType(String),
      );
    }
    if (object.volumesAttached != null) {
      yield r'volumesAttached';
      yield serializers.serialize(
        object.volumesAttached,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1AttachedVolume)]),
      );
    }
    if (object.volumesInUse != null) {
      yield r'volumesInUse';
      yield serializers.serialize(
        object.volumesInUse,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'addresses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeAddress)]),
          ) as BuiltList<IoK8sApiCoreV1NodeAddress>;
          result.addresses.replace(valueDes);
          break;
        case r'allocatable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.allocatable.replace(valueDes);
          break;
        case r'capacity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.capacity.replace(valueDes);
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1NodeCondition)]),
          ) as BuiltList<IoK8sApiCoreV1NodeCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'config':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeConfigStatus),
          ) as IoK8sApiCoreV1NodeConfigStatus;
          result.config.replace(valueDes);
          break;
        case r'daemonEndpoints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeDaemonEndpoints),
          ) as IoK8sApiCoreV1NodeDaemonEndpoints;
          result.daemonEndpoints.replace(valueDes);
          break;
        case r'images':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ContainerImage)]),
          ) as BuiltList<IoK8sApiCoreV1ContainerImage>;
          result.images.replace(valueDes);
          break;
        case r'nodeInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSystemInfo),
          ) as IoK8sApiCoreV1NodeSystemInfo;
          result.nodeInfo.replace(valueDes);
          break;
        case r'phase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phase = valueDes;
          break;
        case r'volumesAttached':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1AttachedVolume)]),
          ) as BuiltList<IoK8sApiCoreV1AttachedVolume>;
          result.volumesAttached.replace(valueDes);
          break;
        case r'volumesInUse':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.volumesInUse.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeStatusBuilder();
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

