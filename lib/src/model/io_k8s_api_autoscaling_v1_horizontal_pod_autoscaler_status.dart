//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v1_horizontal_pod_autoscaler_status.g.dart';

/// current status of a horizontal pod autoscaler
///
/// Properties:
/// * [currentCPUUtilizationPercentage] - current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
/// * [currentReplicas] - current number of replicas of pods managed by this autoscaler.
/// * [desiredReplicas] - desired number of replicas of pods managed by this autoscaler.
/// * [lastScaleTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [observedGeneration] - most recent generation observed by this autoscaler.
@BuiltValue()
abstract class IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus implements Built<IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus, IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusBuilder> {
  /// current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
  @BuiltValueField(wireName: r'currentCPUUtilizationPercentage')
  int? get currentCPUUtilizationPercentage;

  /// current number of replicas of pods managed by this autoscaler.
  @BuiltValueField(wireName: r'currentReplicas')
  int get currentReplicas;

  /// desired number of replicas of pods managed by this autoscaler.
  @BuiltValueField(wireName: r'desiredReplicas')
  int get desiredReplicas;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastScaleTime')
  DateTime? get lastScaleTime;

  /// most recent generation observed by this autoscaler.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus._();

  factory IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus([void updates(IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusBuilder b)]) = _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus> get serializer => _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusSerializer();
}

class _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus, _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentCPUUtilizationPercentage != null) {
      yield r'currentCPUUtilizationPercentage';
      yield serializers.serialize(
        object.currentCPUUtilizationPercentage,
        specifiedType: const FullType(int),
      );
    }
    yield r'currentReplicas';
    yield serializers.serialize(
      object.currentReplicas,
      specifiedType: const FullType(int),
    );
    yield r'desiredReplicas';
    yield serializers.serialize(
      object.desiredReplicas,
      specifiedType: const FullType(int),
    );
    if (object.lastScaleTime != null) {
      yield r'lastScaleTime';
      yield serializers.serialize(
        object.lastScaleTime,
        specifiedType: const FullType(DateTime),
      );
    }
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
    IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currentCPUUtilizationPercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentCPUUtilizationPercentage = valueDes;
          break;
        case r'currentReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currentReplicas = valueDes;
          break;
        case r'desiredReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.desiredReplicas = valueDes;
          break;
        case r'lastScaleTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastScaleTime = valueDes;
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
  IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusBuilder();
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

