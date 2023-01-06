//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_stateful_set_status.g.dart';

/// StatefulSetStatus represents the current state of a StatefulSet.
///
/// Properties:
/// * [availableReplicas] - Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
/// * [collisionCount] - collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
/// * [conditions] - Represents the latest available observations of a statefulset's current state.
/// * [currentReplicas] - currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
/// * [currentRevision] - currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
/// * [observedGeneration] - observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
/// * [readyReplicas] - readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
/// * [replicas] - replicas is the number of Pods created by the StatefulSet controller.
/// * [updateRevision] - updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
/// * [updatedReplicas] - updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
@BuiltValue()
abstract class IoK8sApiAppsV1StatefulSetStatus implements Built<IoK8sApiAppsV1StatefulSetStatus, IoK8sApiAppsV1StatefulSetStatusBuilder> {
  /// Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
  @BuiltValueField(wireName: r'availableReplicas')
  int? get availableReplicas;

  /// collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  @BuiltValueField(wireName: r'collisionCount')
  int? get collisionCount;

  /// Represents the latest available observations of a statefulset's current state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiAppsV1StatefulSetCondition>? get conditions;

  /// currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
  @BuiltValueField(wireName: r'currentReplicas')
  int? get currentReplicas;

  /// currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
  @BuiltValueField(wireName: r'currentRevision')
  String? get currentRevision;

  /// observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  /// readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
  @BuiltValueField(wireName: r'readyReplicas')
  int? get readyReplicas;

  /// replicas is the number of Pods created by the StatefulSet controller.
  @BuiltValueField(wireName: r'replicas')
  int get replicas;

  /// updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
  @BuiltValueField(wireName: r'updateRevision')
  String? get updateRevision;

  /// updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
  @BuiltValueField(wireName: r'updatedReplicas')
  int? get updatedReplicas;

  IoK8sApiAppsV1StatefulSetStatus._();

  factory IoK8sApiAppsV1StatefulSetStatus([void updates(IoK8sApiAppsV1StatefulSetStatusBuilder b)]) = _$IoK8sApiAppsV1StatefulSetStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1StatefulSetStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1StatefulSetStatus> get serializer => _$IoK8sApiAppsV1StatefulSetStatusSerializer();
}

class _$IoK8sApiAppsV1StatefulSetStatusSerializer implements PrimitiveSerializer<IoK8sApiAppsV1StatefulSetStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1StatefulSetStatus, _$IoK8sApiAppsV1StatefulSetStatus];

  @override
  final String wireName = r'IoK8sApiAppsV1StatefulSetStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.availableReplicas != null) {
      yield r'availableReplicas';
      yield serializers.serialize(
        object.availableReplicas,
        specifiedType: const FullType(int),
      );
    }
    if (object.collisionCount != null) {
      yield r'collisionCount';
      yield serializers.serialize(
        object.collisionCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1StatefulSetCondition)]),
      );
    }
    if (object.currentReplicas != null) {
      yield r'currentReplicas';
      yield serializers.serialize(
        object.currentReplicas,
        specifiedType: const FullType(int),
      );
    }
    if (object.currentRevision != null) {
      yield r'currentRevision';
      yield serializers.serialize(
        object.currentRevision,
        specifiedType: const FullType(String),
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
    if (object.updateRevision != null) {
      yield r'updateRevision';
      yield serializers.serialize(
        object.updateRevision,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedReplicas != null) {
      yield r'updatedReplicas';
      yield serializers.serialize(
        object.updatedReplicas,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1StatefulSetStatusBuilder result,
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
        case r'collisionCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.collisionCount = valueDes;
          break;
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1StatefulSetCondition)]),
          ) as BuiltList<IoK8sApiAppsV1StatefulSetCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'currentReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentReplicas = valueDes;
          break;
        case r'currentRevision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentRevision = valueDes;
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
        case r'updateRevision':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateRevision = valueDes;
          break;
        case r'updatedReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedReplicas = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1StatefulSetStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1StatefulSetStatusBuilder();
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

