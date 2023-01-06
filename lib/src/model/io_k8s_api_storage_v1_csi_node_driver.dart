//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_storage_v1_volume_node_resources.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_csi_node_driver.g.dart';

/// CSINodeDriver holds information about the specification of one CSI driver installed on a node
///
/// Properties:
/// * [allocatable] 
/// * [name] - This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
/// * [nodeID] - nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required.
/// * [topologyKeys] - topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. \"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
@BuiltValue()
abstract class IoK8sApiStorageV1CSINodeDriver implements Built<IoK8sApiStorageV1CSINodeDriver, IoK8sApiStorageV1CSINodeDriverBuilder> {
  @BuiltValueField(wireName: r'allocatable')
  IoK8sApiStorageV1VolumeNodeResources? get allocatable;

  /// This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required.
  @BuiltValueField(wireName: r'nodeID')
  String get nodeID;

  /// topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. \"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
  @BuiltValueField(wireName: r'topologyKeys')
  BuiltList<String>? get topologyKeys;

  IoK8sApiStorageV1CSINodeDriver._();

  factory IoK8sApiStorageV1CSINodeDriver([void updates(IoK8sApiStorageV1CSINodeDriverBuilder b)]) = _$IoK8sApiStorageV1CSINodeDriver;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1CSINodeDriverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1CSINodeDriver> get serializer => _$IoK8sApiStorageV1CSINodeDriverSerializer();
}

class _$IoK8sApiStorageV1CSINodeDriverSerializer implements PrimitiveSerializer<IoK8sApiStorageV1CSINodeDriver> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1CSINodeDriver, _$IoK8sApiStorageV1CSINodeDriver];

  @override
  final String wireName = r'IoK8sApiStorageV1CSINodeDriver';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1CSINodeDriver object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allocatable != null) {
      yield r'allocatable';
      yield serializers.serialize(
        object.allocatable,
        specifiedType: const FullType(IoK8sApiStorageV1VolumeNodeResources),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'nodeID';
    yield serializers.serialize(
      object.nodeID,
      specifiedType: const FullType(String),
    );
    if (object.topologyKeys != null) {
      yield r'topologyKeys';
      yield serializers.serialize(
        object.topologyKeys,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1CSINodeDriver object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1CSINodeDriverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allocatable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiStorageV1VolumeNodeResources),
          ) as IoK8sApiStorageV1VolumeNodeResources;
          result.allocatable.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'nodeID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nodeID = valueDes;
          break;
        case r'topologyKeys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.topologyKeys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1CSINodeDriver deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1CSINodeDriverBuilder();
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

