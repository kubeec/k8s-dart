//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_preferred_scheduling_term.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_node_affinity.g.dart';

/// Node affinity is a group of node affinity scheduling rules.
///
/// Properties:
/// * [preferredDuringSchedulingIgnoredDuringExecution] - The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
/// * [requiredDuringSchedulingIgnoredDuringExecution] 
@BuiltValue()
abstract class IoK8sApiCoreV1NodeAffinity implements Built<IoK8sApiCoreV1NodeAffinity, IoK8sApiCoreV1NodeAffinityBuilder> {
  /// The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
  @BuiltValueField(wireName: r'preferredDuringSchedulingIgnoredDuringExecution')
  BuiltList<IoK8sApiCoreV1PreferredSchedulingTerm>? get preferredDuringSchedulingIgnoredDuringExecution;

  @BuiltValueField(wireName: r'requiredDuringSchedulingIgnoredDuringExecution')
  IoK8sApiCoreV1NodeSelector? get requiredDuringSchedulingIgnoredDuringExecution;

  IoK8sApiCoreV1NodeAffinity._();

  factory IoK8sApiCoreV1NodeAffinity([void updates(IoK8sApiCoreV1NodeAffinityBuilder b)]) = _$IoK8sApiCoreV1NodeAffinity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1NodeAffinityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1NodeAffinity> get serializer => _$IoK8sApiCoreV1NodeAffinitySerializer();
}

class _$IoK8sApiCoreV1NodeAffinitySerializer implements PrimitiveSerializer<IoK8sApiCoreV1NodeAffinity> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1NodeAffinity, _$IoK8sApiCoreV1NodeAffinity];

  @override
  final String wireName = r'IoK8sApiCoreV1NodeAffinity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1NodeAffinity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.preferredDuringSchedulingIgnoredDuringExecution != null) {
      yield r'preferredDuringSchedulingIgnoredDuringExecution';
      yield serializers.serialize(
        object.preferredDuringSchedulingIgnoredDuringExecution,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PreferredSchedulingTerm)]),
      );
    }
    if (object.requiredDuringSchedulingIgnoredDuringExecution != null) {
      yield r'requiredDuringSchedulingIgnoredDuringExecution';
      yield serializers.serialize(
        object.requiredDuringSchedulingIgnoredDuringExecution,
        specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1NodeAffinity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1NodeAffinityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'preferredDuringSchedulingIgnoredDuringExecution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PreferredSchedulingTerm)]),
          ) as BuiltList<IoK8sApiCoreV1PreferredSchedulingTerm>;
          result.preferredDuringSchedulingIgnoredDuringExecution.replace(valueDes);
          break;
        case r'requiredDuringSchedulingIgnoredDuringExecution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
          ) as IoK8sApiCoreV1NodeSelector;
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
  IoK8sApiCoreV1NodeAffinity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1NodeAffinityBuilder();
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

