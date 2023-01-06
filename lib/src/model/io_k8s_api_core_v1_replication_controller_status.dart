//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_replication_controller_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_replication_controller_status.g.dart';

/// ReplicationControllerStatus represents the current status of a replication controller.
///
/// Properties:
/// * [availableReplicas] - The number of available replicas (ready for at least minReadySeconds) for this replication controller.
/// * [conditions] - Represents the latest available observations of a replication controller's current state.
/// * [fullyLabeledReplicas] - The number of pods that have labels matching the labels of the pod template of the replication controller.
/// * [observedGeneration] - ObservedGeneration reflects the generation of the most recently observed replication controller.
/// * [readyReplicas] - The number of ready replicas for this replication controller.
/// * [replicas] - Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
@BuiltValue()
abstract class IoK8sApiCoreV1ReplicationControllerStatus implements Built<IoK8sApiCoreV1ReplicationControllerStatus, IoK8sApiCoreV1ReplicationControllerStatusBuilder> {
  /// The number of available replicas (ready for at least minReadySeconds) for this replication controller.
  @BuiltValueField(wireName: r'availableReplicas')
  int? get availableReplicas;

  /// Represents the latest available observations of a replication controller's current state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiCoreV1ReplicationControllerCondition>? get conditions;

  /// The number of pods that have labels matching the labels of the pod template of the replication controller.
  @BuiltValueField(wireName: r'fullyLabeledReplicas')
  int? get fullyLabeledReplicas;

  /// ObservedGeneration reflects the generation of the most recently observed replication controller.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  /// The number of ready replicas for this replication controller.
  @BuiltValueField(wireName: r'readyReplicas')
  int? get readyReplicas;

  /// Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  @BuiltValueField(wireName: r'replicas')
  int get replicas;

  IoK8sApiCoreV1ReplicationControllerStatus._();

  factory IoK8sApiCoreV1ReplicationControllerStatus([void updates(IoK8sApiCoreV1ReplicationControllerStatusBuilder b)]) = _$IoK8sApiCoreV1ReplicationControllerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ReplicationControllerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ReplicationControllerStatus> get serializer => _$IoK8sApiCoreV1ReplicationControllerStatusSerializer();
}

class _$IoK8sApiCoreV1ReplicationControllerStatusSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ReplicationControllerStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ReplicationControllerStatus, _$IoK8sApiCoreV1ReplicationControllerStatus];

  @override
  final String wireName = r'IoK8sApiCoreV1ReplicationControllerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ReplicationControllerStatus object, {
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
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ReplicationControllerCondition)]),
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
    IoK8sApiCoreV1ReplicationControllerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ReplicationControllerStatusBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1ReplicationControllerCondition)]),
          ) as BuiltList<IoK8sApiCoreV1ReplicationControllerCondition>;
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
  IoK8sApiCoreV1ReplicationControllerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ReplicationControllerStatusBuilder();
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

