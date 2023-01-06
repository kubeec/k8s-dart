//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_condition.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_deployment_status.g.dart';

/// DeploymentStatus is the most recently observed status of the Deployment.
///
/// Properties:
/// * [availableReplicas] - Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
/// * [collisionCount] - Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
/// * [conditions] - Represents the latest available observations of a deployment's current state.
/// * [observedGeneration] - The generation observed by the deployment controller.
/// * [readyReplicas] - readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
/// * [replicas] - Total number of non-terminated pods targeted by this deployment (their labels match the selector).
/// * [unavailableReplicas] - Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
/// * [updatedReplicas] - Total number of non-terminated pods targeted by this deployment that have the desired template spec.
@BuiltValue()
abstract class IoK8sApiAppsV1DeploymentStatus implements Built<IoK8sApiAppsV1DeploymentStatus, IoK8sApiAppsV1DeploymentStatusBuilder> {
  /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  @BuiltValueField(wireName: r'availableReplicas')
  int? get availableReplicas;

  /// Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
  @BuiltValueField(wireName: r'collisionCount')
  int? get collisionCount;

  /// Represents the latest available observations of a deployment's current state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiAppsV1DeploymentCondition>? get conditions;

  /// The generation observed by the deployment controller.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  /// readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
  @BuiltValueField(wireName: r'readyReplicas')
  int? get readyReplicas;

  /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  @BuiltValueField(wireName: r'replicas')
  int? get replicas;

  /// Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
  @BuiltValueField(wireName: r'unavailableReplicas')
  int? get unavailableReplicas;

  /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  @BuiltValueField(wireName: r'updatedReplicas')
  int? get updatedReplicas;

  IoK8sApiAppsV1DeploymentStatus._();

  factory IoK8sApiAppsV1DeploymentStatus([void updates(IoK8sApiAppsV1DeploymentStatusBuilder b)]) = _$IoK8sApiAppsV1DeploymentStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DeploymentStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DeploymentStatus> get serializer => _$IoK8sApiAppsV1DeploymentStatusSerializer();
}

class _$IoK8sApiAppsV1DeploymentStatusSerializer implements PrimitiveSerializer<IoK8sApiAppsV1DeploymentStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DeploymentStatus, _$IoK8sApiAppsV1DeploymentStatus];

  @override
  final String wireName = r'IoK8sApiAppsV1DeploymentStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DeploymentStatus object, {
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
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1DeploymentCondition)]),
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
    if (object.replicas != null) {
      yield r'replicas';
      yield serializers.serialize(
        object.replicas,
        specifiedType: const FullType(int),
      );
    }
    if (object.unavailableReplicas != null) {
      yield r'unavailableReplicas';
      yield serializers.serialize(
        object.unavailableReplicas,
        specifiedType: const FullType(int),
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
    IoK8sApiAppsV1DeploymentStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DeploymentStatusBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1DeploymentCondition)]),
          ) as BuiltList<IoK8sApiAppsV1DeploymentCondition>;
          result.conditions.replace(valueDes);
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
        case r'unavailableReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.unavailableReplicas = valueDes;
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
  IoK8sApiAppsV1DeploymentStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DeploymentStatusBuilder();
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

