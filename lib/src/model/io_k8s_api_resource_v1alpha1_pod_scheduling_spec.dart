//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_pod_scheduling_spec.g.dart';

/// PodSchedulingSpec describes where resources for the Pod are needed.
///
/// Properties:
/// * [potentialNodes] - PotentialNodes lists nodes where the Pod might be able to run.  The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
/// * [selectedNode] - SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1PodSchedulingSpec implements Built<IoK8sApiResourceV1alpha1PodSchedulingSpec, IoK8sApiResourceV1alpha1PodSchedulingSpecBuilder> {
  /// PotentialNodes lists nodes where the Pod might be able to run.  The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
  @BuiltValueField(wireName: r'potentialNodes')
  BuiltList<String>? get potentialNodes;

  /// SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted.
  @BuiltValueField(wireName: r'selectedNode')
  String? get selectedNode;

  IoK8sApiResourceV1alpha1PodSchedulingSpec._();

  factory IoK8sApiResourceV1alpha1PodSchedulingSpec([void updates(IoK8sApiResourceV1alpha1PodSchedulingSpecBuilder b)]) = _$IoK8sApiResourceV1alpha1PodSchedulingSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1PodSchedulingSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1PodSchedulingSpec> get serializer => _$IoK8sApiResourceV1alpha1PodSchedulingSpecSerializer();
}

class _$IoK8sApiResourceV1alpha1PodSchedulingSpecSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1PodSchedulingSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1PodSchedulingSpec, _$IoK8sApiResourceV1alpha1PodSchedulingSpec];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1PodSchedulingSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1PodSchedulingSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.potentialNodes != null) {
      yield r'potentialNodes';
      yield serializers.serialize(
        object.potentialNodes,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.selectedNode != null) {
      yield r'selectedNode';
      yield serializers.serialize(
        object.selectedNode,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1PodSchedulingSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1PodSchedulingSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'potentialNodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.potentialNodes.replace(valueDes);
          break;
        case r'selectedNode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.selectedNode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1PodSchedulingSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1PodSchedulingSpecBuilder();
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

