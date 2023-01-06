//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_policy_v1_pod_disruption_budget_status.g.dart';

/// PodDisruptionBudgetStatus represents information about the status of a PodDisruptionBudget. Status may trail the actual state of a system.
///
/// Properties:
/// * [conditions] - Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute               the number of allowed disruptions. Therefore no disruptions are               allowed and the status of the condition will be False. - InsufficientPods: The number of pods are either at or below the number                     required by the PodDisruptionBudget. No disruptions are                     allowed and the status of the condition will be False. - SufficientPods: There are more pods than required by the PodDisruptionBudget.                   The condition will be True, and the number of allowed                   disruptions are provided by the disruptionsAllowed property.
/// * [currentHealthy] - current number of healthy pods
/// * [desiredHealthy] - minimum desired number of healthy pods
/// * [disruptedPods] - DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
/// * [disruptionsAllowed] - Number of pod disruptions that are currently allowed.
/// * [expectedPods] - total number of pods counted by this disruption budget
/// * [observedGeneration] - Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
@BuiltValue()
abstract class IoK8sApiPolicyV1PodDisruptionBudgetStatus implements Built<IoK8sApiPolicyV1PodDisruptionBudgetStatus, IoK8sApiPolicyV1PodDisruptionBudgetStatusBuilder> {
  /// Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute               the number of allowed disruptions. Therefore no disruptions are               allowed and the status of the condition will be False. - InsufficientPods: The number of pods are either at or below the number                     required by the PodDisruptionBudget. No disruptions are                     allowed and the status of the condition will be False. - SufficientPods: There are more pods than required by the PodDisruptionBudget.                   The condition will be True, and the number of allowed                   disruptions are provided by the disruptionsAllowed property.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApimachineryPkgApisMetaV1Condition>? get conditions;

  /// current number of healthy pods
  @BuiltValueField(wireName: r'currentHealthy')
  int get currentHealthy;

  /// minimum desired number of healthy pods
  @BuiltValueField(wireName: r'desiredHealthy')
  int get desiredHealthy;

  /// DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
  @BuiltValueField(wireName: r'disruptedPods')
  BuiltMap<String, DateTime>? get disruptedPods;

  /// Number of pod disruptions that are currently allowed.
  @BuiltValueField(wireName: r'disruptionsAllowed')
  int get disruptionsAllowed;

  /// total number of pods counted by this disruption budget
  @BuiltValueField(wireName: r'expectedPods')
  int get expectedPods;

  /// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  IoK8sApiPolicyV1PodDisruptionBudgetStatus._();

  factory IoK8sApiPolicyV1PodDisruptionBudgetStatus([void updates(IoK8sApiPolicyV1PodDisruptionBudgetStatusBuilder b)]) = _$IoK8sApiPolicyV1PodDisruptionBudgetStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiPolicyV1PodDisruptionBudgetStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiPolicyV1PodDisruptionBudgetStatus> get serializer => _$IoK8sApiPolicyV1PodDisruptionBudgetStatusSerializer();
}

class _$IoK8sApiPolicyV1PodDisruptionBudgetStatusSerializer implements PrimitiveSerializer<IoK8sApiPolicyV1PodDisruptionBudgetStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiPolicyV1PodDisruptionBudgetStatus, _$IoK8sApiPolicyV1PodDisruptionBudgetStatus];

  @override
  final String wireName = r'IoK8sApiPolicyV1PodDisruptionBudgetStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiPolicyV1PodDisruptionBudgetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1Condition)]),
      );
    }
    yield r'currentHealthy';
    yield serializers.serialize(
      object.currentHealthy,
      specifiedType: const FullType(int),
    );
    yield r'desiredHealthy';
    yield serializers.serialize(
      object.desiredHealthy,
      specifiedType: const FullType(int),
    );
    if (object.disruptedPods != null) {
      yield r'disruptedPods';
      yield serializers.serialize(
        object.disruptedPods,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DateTime)]),
      );
    }
    yield r'disruptionsAllowed';
    yield serializers.serialize(
      object.disruptionsAllowed,
      specifiedType: const FullType(int),
    );
    yield r'expectedPods';
    yield serializers.serialize(
      object.expectedPods,
      specifiedType: const FullType(int),
    );
    if (object.observedGeneration != null) {
      yield r'observedGeneration';
      yield serializers.serialize(
        object.observedGeneration,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiPolicyV1PodDisruptionBudgetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiPolicyV1PodDisruptionBudgetStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1Condition)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1Condition>;
          result.conditions.replace(valueDes);
          break;
        case r'currentHealthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentHealthy = valueDes;
          break;
        case r'desiredHealthy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.desiredHealthy = valueDes;
          break;
        case r'disruptedPods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(DateTime)]),
          ) as BuiltMap<String, DateTime>;
          result.disruptedPods.replace(valueDes);
          break;
        case r'disruptionsAllowed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.disruptionsAllowed = valueDes;
          break;
        case r'expectedPods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expectedPods = valueDes;
          break;
        case r'observedGeneration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.observedGeneration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiPolicyV1PodDisruptionBudgetStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiPolicyV1PodDisruptionBudgetStatusBuilder();
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

