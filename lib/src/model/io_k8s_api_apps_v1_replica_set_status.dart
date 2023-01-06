//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_replica_set_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_replica_set_status.g.dart';

/// ReplicaSetStatus represents the current status of a ReplicaSet.
///
/// Properties:
/// * [availableReplicas] - The number of available replicas (ready for at least minReadySeconds) for this replica set.
/// * [conditions] - Represents the latest available observations of a replica set's current state.
/// * [fullyLabeledReplicas] - The number of pods that have labels matching the labels of the pod template of the replicaset.
/// * [observedGeneration] - ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
/// * [readyReplicas] - readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition.
/// * [replicas] - Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
@BuiltValue()
abstract class IoK8sApiAppsV1ReplicaSetStatus implements Built<IoK8sApiAppsV1ReplicaSetStatus, IoK8sApiAppsV1ReplicaSetStatusBuilder> {
  /// The number of available replicas (ready for at least minReadySeconds) for this replica set.
  @BuiltValueField(wireName: r'availableReplicas')
  int? get availableReplicas;

  /// Represents the latest available observations of a replica set's current state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiAppsV1ReplicaSetCondition>? get conditions;

  /// The number of pods that have labels matching the labels of the pod template of the replicaset.
  @BuiltValueField(wireName: r'fullyLabeledReplicas')
  int? get fullyLabeledReplicas;

  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  /// readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition.
  @BuiltValueField(wireName: r'readyReplicas')
  int? get readyReplicas;

  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  @BuiltValueField(wireName: r'replicas')
  int get replicas;

  IoK8sApiAppsV1ReplicaSetStatus._();

  factory IoK8sApiAppsV1ReplicaSetStatus([void updates(IoK8sApiAppsV1ReplicaSetStatusBuilder b)]) = _$IoK8sApiAppsV1ReplicaSetStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1ReplicaSetStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1ReplicaSetStatus> get serializer => _$IoK8sApiAppsV1ReplicaSetStatusSerializer();
}

class _$IoK8sApiAppsV1ReplicaSetStatusSerializer implements PrimitiveSerializer<IoK8sApiAppsV1ReplicaSetStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1ReplicaSetStatus, _$IoK8sApiAppsV1ReplicaSetStatus];

  @override
  final String wireName = r'IoK8sApiAppsV1ReplicaSetStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1ReplicaSetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.availableReplicas != null) {
      yield r'availableReplicas';
      yield serializers.serialize(
        object.availableReplicas,
        specifiedType: const FullType(int),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1ReplicaSetCondition)]),
      );
    }
    if (object.fullyLabeledReplicas != null) {
      yield r'fullyLabeledReplicas';
      yield serializers.serialize(
        object.fullyLabeledReplicas,
        specifiedType: const FullType(int),
      );
    }
    if (object.observedGeneration != null) {
      yield r'observedGeneration';
      yield serializers.serialize(
        object.observedGeneration,
        specifiedType: const FullType(int),
      );
    }
    if (object.readyReplicas != null) {
      yield r'readyReplicas';
      yield serializers.serialize(
        object.readyReplicas,
        specifiedType: const FullType(int),
      );
    }
    yield r'replicas';
    yield serializers.serialize(
      object.replicas,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1ReplicaSetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1ReplicaSetStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'availableReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.availableReplicas = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1ReplicaSetCondition)]),
          ) as BuiltList<IoK8sApiAppsV1ReplicaSetCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'fullyLabeledReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fullyLabeledReplicas = valueDes;
          break;
        case r'observedGeneration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.observedGeneration = valueDes;
          break;
        case r'readyReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.readyReplicas = valueDes;
          break;
        case r'replicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.replicas = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1ReplicaSetStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1ReplicaSetStatusBuilder();
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

