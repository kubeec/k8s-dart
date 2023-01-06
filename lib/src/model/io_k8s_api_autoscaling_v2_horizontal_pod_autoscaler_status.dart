//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_condition.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_status.g.dart';

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
///
/// Properties:
/// * [conditions] - conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
/// * [currentMetrics] - currentMetrics is the last read state of the metrics used by this autoscaler.
/// * [currentReplicas] - currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
/// * [desiredReplicas] - desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
/// * [lastScaleTime] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [observedGeneration] - observedGeneration is the most recent generation observed by this autoscaler.
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus implements Built<IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus, IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusBuilder> {
  /// conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
  @BuiltValueField(wireName: r'conditions')
  BuiltList<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition>? get conditions;

  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  @BuiltValueField(wireName: r'currentMetrics')
  BuiltList<IoK8sApiAutoscalingV2MetricStatus>? get currentMetrics;

  /// currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
  @BuiltValueField(wireName: r'currentReplicas')
  int? get currentReplicas;

  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
  @BuiltValueField(wireName: r'desiredReplicas')
  int get desiredReplicas;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastScaleTime')
  DateTime? get lastScaleTime;

  /// observedGeneration is the most recent generation observed by this autoscaler.
  @BuiltValueField(wireName: r'observedGeneration')
  int? get observedGeneration;

  IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus._();

  factory IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus([void updates(IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusBuilder b)]) = _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus> get serializer => _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusSerializer();
}

class _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus, _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.conditions != null) {
      yield r'conditions';
      yield serializers.serialize(
        object.conditions,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition)]),
      );
    }
    if (object.currentMetrics != null) {
      yield r'currentMetrics';
      yield serializers.serialize(
        object.currentMetrics,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2MetricStatus)]),
      );
    }
    if (object.currentReplicas != null) {
      yield r'currentReplicas';
      yield serializers.serialize(
        object.currentReplicas,
        specifiedType: const FullType(int),
      );
    }
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
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition)]),
          ) as BuiltList<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition>;
          result.conditions.replace(valueDes);
          break;
        case r'currentMetrics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2MetricStatus)]),
          ) as BuiltList<IoK8sApiAutoscalingV2MetricStatus>;
          result.currentMetrics.replace(valueDes);
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
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusBuilder();
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

