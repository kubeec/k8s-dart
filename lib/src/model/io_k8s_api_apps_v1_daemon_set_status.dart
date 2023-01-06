//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_daemon_set_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_daemon_set_status.g.dart';

/// DaemonSetStatus represents the current status of a daemon set.
///
/// Properties:
/// * [collisionCount] - Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
/// * [conditions] - Represents the latest available observations of a DaemonSet's current state.
/// * [currentNumberScheduled] - The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
/// * [desiredNumberScheduled] - The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
/// * [numberAvailable] - The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
/// * [numberMisscheduled] - The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
/// * [numberReady] - numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
/// * [numberUnavailable] - The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
/// * [observedGeneration] - The most recent generation observed by the daemon set controller.
/// * [updatedNumberScheduled] - The total number of nodes that are running updated daemon pod
@BuiltValue()
abstract class IoK8sApiAppsV1DaemonSetStatus implements Built<IoK8sApiAppsV1DaemonSetStatus, IoK8sApiAppsV1DaemonSetStatusBuilder> {
  /// Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
  @BuiltValueField(wireName: r'collisionCount')
  int? get collisionCount;

  /// Represents the latest available observations of a DaemonSet's current state.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiAppsV1DaemonSetCondition>? get conditions;

  /// The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @BuiltValueField(wireName: r'currentNumberScheduled')
  int get currentNumberScheduled;

  /// The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @BuiltValueField(wireName: r'desiredNumberScheduled')
  int get desiredNumberScheduled;

  /// The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
  @BuiltValueField(wireName: r'numberAvailable')
  int? get numberAvailable;

  /// The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @BuiltValueField(wireName: r'numberMisscheduled')
  int get numberMisscheduled;

  /// numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
  @BuiltValueField(wireName: r'numberReady')
  int get numberReady;

  /// The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
  @BuiltValueField(wireName: r'numberUnavailable')
  int? get numberUnavailable;

  /// The most recent generation observed by the daemon set controller.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  /// The total number of nodes that are running updated daemon pod
  @BuiltValueField(wireName: r'updatedNumberScheduled')
  int? get updatedNumberScheduled;

  IoK8sApiAppsV1DaemonSetStatus._();

  factory IoK8sApiAppsV1DaemonSetStatus([void updates(IoK8sApiAppsV1DaemonSetStatusBuilder b)]) = _$IoK8sApiAppsV1DaemonSetStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DaemonSetStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DaemonSetStatus> get serializer => _$IoK8sApiAppsV1DaemonSetStatusSerializer();
}

class _$IoK8sApiAppsV1DaemonSetStatusSerializer implements PrimitiveSerializer<IoK8sApiAppsV1DaemonSetStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DaemonSetStatus, _$IoK8sApiAppsV1DaemonSetStatus];

  @override
  final String wireName = r'IoK8sApiAppsV1DaemonSetStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DaemonSetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1DaemonSetCondition)]),
      );
    }
    yield r'currentNumberScheduled';
    yield serializers.serialize(
      object.currentNumberScheduled,
      specifiedType: const FullType(int),
    );
    yield r'desiredNumberScheduled';
    yield serializers.serialize(
      object.desiredNumberScheduled,
      specifiedType: const FullType(int),
    );
    if (object.numberAvailable != null) {
      yield r'numberAvailable';
      yield serializers.serialize(
        object.numberAvailable,
        specifiedType: const FullType(int),
      );
    }
    yield r'numberMisscheduled';
    yield serializers.serialize(
      object.numberMisscheduled,
      specifiedType: const FullType(int),
    );
    yield r'numberReady';
    yield serializers.serialize(
      object.numberReady,
      specifiedType: const FullType(int),
    );
    if (object.numberUnavailable != null) {
      yield r'numberUnavailable';
      yield serializers.serialize(
        object.numberUnavailable,
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
    if (object.updatedNumberScheduled != null) {
      yield r'updatedNumberScheduled';
      yield serializers.serialize(
        object.updatedNumberScheduled,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1DaemonSetStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DaemonSetStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAppsV1DaemonSetCondition)]),
          ) as BuiltList<IoK8sApiAppsV1DaemonSetCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'currentNumberScheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentNumberScheduled = valueDes;
          break;
        case r'desiredNumberScheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.desiredNumberScheduled = valueDes;
          break;
        case r'numberAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberAvailable = valueDes;
          break;
        case r'numberMisscheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberMisscheduled = valueDes;
          break;
        case r'numberReady':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberReady = valueDes;
          break;
        case r'numberUnavailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.numberUnavailable = valueDes;
          break;
        case r'observedGeneration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.observedGeneration = valueDes;
          break;
        case r'updatedNumberScheduled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedNumberScheduled = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1DaemonSetStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DaemonSetStatusBuilder();
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

