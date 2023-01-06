//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_weighted_pod_affinity_term.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_affinity_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_pod_affinity.g.dart';

/// Pod affinity is a group of inter pod affinity scheduling rules.
///
/// Properties:
/// * [preferredDuringSchedulingIgnoredDuringExecution] - The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
/// * [requiredDuringSchedulingIgnoredDuringExecution] - If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
@BuiltValue()
abstract class IoK8sApiCoreV1PodAffinity implements Built<IoK8sApiCoreV1PodAffinity, IoK8sApiCoreV1PodAffinityBuilder> {
  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
  @BuiltValueField(wireName: r'preferredDuringSchedulingIgnoredDuringExecution')
  BuiltList<IoK8sApiCoreV1WeightedPodAffinityTerm>? get preferredDuringSchedulingIgnoredDuringExecution;

  /// If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
  @BuiltValueField(wireName: r'requiredDuringSchedulingIgnoredDuringExecution')
  BuiltList<IoK8sApiCoreV1PodAffinityTerm>? get requiredDuringSchedulingIgnoredDuringExecution;

  IoK8sApiCoreV1PodAffinity._();

  factory IoK8sApiCoreV1PodAffinity([void updates(IoK8sApiCoreV1PodAffinityBuilder b)]) = _$IoK8sApiCoreV1PodAffinity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1PodAffinityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1PodAffinity> get serializer => _$IoK8sApiCoreV1PodAffinitySerializer();
}

class _$IoK8sApiCoreV1PodAffinitySerializer implements PrimitiveSerializer<IoK8sApiCoreV1PodAffinity> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1PodAffinity, _$IoK8sApiCoreV1PodAffinity];

  @override
  final String wireName = r'IoK8sApiCoreV1PodAffinity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1PodAffinity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.preferredDuringSchedulingIgnoredDuringExecution != null) {
      yield r'preferredDuringSchedulingIgnoredDuringExecution';
      yield serializers.serialize(
        object.preferredDuringSchedulingIgnoredDuringExecution,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1WeightedPodAffinityTerm)]),
      );
    }
    if (object.requiredDuringSchedulingIgnoredDuringExecution != null) {
      yield r'requiredDuringSchedulingIgnoredDuringExecution';
      yield serializers.serialize(
        object.requiredDuringSchedulingIgnoredDuringExecution,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodAffinityTerm)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1PodAffinity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1PodAffinityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preferredDuringSchedulingIgnoredDuringExecution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1WeightedPodAffinityTerm)]),
          ) as BuiltList<IoK8sApiCoreV1WeightedPodAffinityTerm>;
          result.preferredDuringSchedulingIgnoredDuringExecution.replace(valueDes);
          break;
        case r'requiredDuringSchedulingIgnoredDuringExecution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PodAffinityTerm)]),
          ) as BuiltList<IoK8sApiCoreV1PodAffinityTerm>;
          result.requiredDuringSchedulingIgnoredDuringExecution.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1PodAffinity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1PodAffinityBuilder();
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

