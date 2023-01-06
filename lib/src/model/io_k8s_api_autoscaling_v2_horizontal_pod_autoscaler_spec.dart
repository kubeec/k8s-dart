//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_behavior.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_spec.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_cross_version_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_horizontal_pod_autoscaler_spec.g.dart';

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
///
/// Properties:
/// * [behavior] 
/// * [maxReplicas] - maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
/// * [metrics] - metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
/// * [minReplicas] - minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
/// * [scaleTargetRef] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec implements Built<IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec, IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecBuilder> {
  @BuiltValueField(wireName: r'behavior')
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior? get behavior;

  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
  @BuiltValueField(wireName: r'maxReplicas')
  int get maxReplicas;

  /// metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
  @BuiltValueField(wireName: r'metrics')
  BuiltList<IoK8sApiAutoscalingV2MetricSpec>? get metrics;

  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  @BuiltValueField(wireName: r'minReplicas')
  int? get minReplicas;

  @BuiltValueField(wireName: r'scaleTargetRef')
  IoK8sApiAutoscalingV2CrossVersionObjectReference get scaleTargetRef;

  IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec._();

  factory IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec([void updates(IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecBuilder b)]) = _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec> get serializer => _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecSerializer();
}

class _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec, _$IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.behavior != null) {
      yield r'behavior';
      yield serializers.serialize(
        object.behavior,
        specifiedType: const FullType(IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior),
      );
    }
    yield r'maxReplicas';
    yield serializers.serialize(
      object.maxReplicas,
      specifiedType: const FullType(int),
    );
    if (object.metrics != null) {
      yield r'metrics';
      yield serializers.serialize(
        object.metrics,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2MetricSpec)]),
      );
    }
    if (object.minReplicas != null) {
      yield r'minReplicas';
      yield serializers.serialize(
        object.minReplicas,
        specifiedType: const FullType(int),
      );
    }
    yield r'scaleTargetRef';
    yield serializers.serialize(
      object.scaleTargetRef,
      specifiedType: const FullType(IoK8sApiAutoscalingV2CrossVersionObjectReference),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'behavior':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior),
          ) as IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior;
          result.behavior.replace(valueDes);
          break;
        case r'maxReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxReplicas = valueDes;
          break;
        case r'metrics':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAutoscalingV2MetricSpec)]),
          ) as BuiltList<IoK8sApiAutoscalingV2MetricSpec>;
          result.metrics.replace(valueDes);
          break;
        case r'minReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minReplicas = valueDes;
          break;
        case r'scaleTargetRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2CrossVersionObjectReference),
          ) as IoK8sApiAutoscalingV2CrossVersionObjectReference;
          result.scaleTargetRef.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecBuilder();
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

