//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_config_source.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_taint.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_spec.g.dart';

/// NodeSpec describes the attributes that a node is created with.
///
/// Properties:
/// * [configSource] 
/// * [externalID] - Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
/// * [podCIDR] - PodCIDR represents the pod IP range assigned to the node.
/// * [podCIDRs] - podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
/// * [providerID] - ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
/// * [taints] - If specified, the node's taints.
/// * [unschedulable] - Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
@BuiltValue()
abstract class IoK8sApiCoreV1NodeSpec implements Built<IoK8sApiCoreV1NodeSpec, IoK8sApiCoreV1NodeSpecBuilder> {
  @BuiltValueField(wireName: r'configSource')
  IoK8sApiCoreV1NodeConfigSource? get configSource;

  /// Deprecated. Not all kubelets will set this field. Remove field after 1.13. see: https://issues.k8s.io/61966
  @BuiltValueField(wireName: r'externalID')
  String? get externalID;

  /// PodCIDR represents the pod IP range assigned to the node.
  @BuiltValueField(wireName: r'podCIDR')
  String? get podCIDR;

  /// podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If this field is specified, the 0th entry must match the podCIDR field. It may contain at most 1 value for each of IPv4 and IPv6.
  @BuiltValueField(wireName: r'podCIDRs')
  BuiltList<String>? get podCIDRs;

  /// ID of the node assigned by the cloud provider in the format: <ProviderName>://<ProviderSpecificNodeID>
  @BuiltValueField(wireName: r'providerID')
  String? get providerID;

  /// If specified, the node's taints.
  @BuiltValueField(wireName: r'taints')
  BuiltList<IoK8sApiCoreV1Taint>? get taints;

  /// Unschedulable controls node schedulability of new pods. By default, node is schedulable. More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
  @BuiltValueField(wireName: r'unschedulable')
  bool? get unschedulable;

  IoK8sApiCoreV1NodeSpec._();

  factory IoK8sApiCoreV1NodeSpec([void updates(IoK8sApiCoreV1NodeSpecBuilder b)]) = _$IoK8sApiCoreV1NodeSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeSpec> get serializer => _$IoK8sApiCoreV1NodeSpecSerializer();
}

class _$IoK8sApiCoreV1NodeSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeSpec, _$IoK8sApiCoreV1NodeSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configSource != null) {
      yield r'configSource';
      yield serializers.serialize(
        object.configSource,
        specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
      );
    }
    if (object.externalID != null) {
      yield r'externalID';
      yield serializers.serialize(
        object.externalID,
        specifiedType: const FullType(String),
      );
    }
    if (object.podCIDR != null) {
      yield r'podCIDR';
      yield serializers.serialize(
        object.podCIDR,
        specifiedType: const FullType(String),
      );
    }
    if (object.podCIDRs != null) {
      yield r'podCIDRs';
      yield serializers.serialize(
        object.podCIDRs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.providerID != null) {
      yield r'providerID';
      yield serializers.serialize(
        object.providerID,
        specifiedType: const FullType(String),
      );
    }
    if (object.taints != null) {
      yield r'taints';
      yield serializers.serialize(
        object.taints,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Taint)]),
      );
    }
    if (object.unschedulable != null) {
      yield r'unschedulable';
      yield serializers.serialize(
        object.unschedulable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeConfigSource),
          ) as IoK8sApiCoreV1NodeConfigSource;
          result.configSource.replace(valueDes);
          break;
        case r'externalID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.externalID = valueDes;
          break;
        case r'podCIDR':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.podCIDR = valueDes;
          break;
        case r'podCIDRs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.podCIDRs.replace(valueDes);
          break;
        case r'providerID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerID = valueDes;
          break;
        case r'taints':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1Taint)]),
          ) as BuiltList<IoK8sApiCoreV1Taint>;
          result.taints.replace(valueDes);
          break;
        case r'unschedulable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unschedulable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1NodeSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeSpecBuilder();
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

