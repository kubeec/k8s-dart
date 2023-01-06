//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v1_cross_version_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v1_horizontal_pod_autoscaler_spec.g.dart';

/// specification of a horizontal pod autoscaler.
///
/// Properties:
/// * [maxReplicas] - upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
/// * [minReplicas] - minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
/// * [scaleTargetRef] 
/// * [targetCPUUtilizationPercentage] - target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
@BuiltValue()
abstract class IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec implements Built<IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec, IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecBuilder> {
  /// upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  @BuiltValueField(wireName: r'maxReplicas')
  int get maxReplicas;

  /// minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
  @BuiltValueField(wireName: r'minReplicas')
  int? get minReplicas;

  @BuiltValueField(wireName: r'scaleTargetRef')
  IoK8sApiAutoscalingV1CrossVersionObjectReference get scaleTargetRef;

  /// target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
  @BuiltValueField(wireName: r'targetCPUUtilizationPercentage')
  int? get targetCPUUtilizationPercentage;

  IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec._();

  factory IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec([void updates(IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecBuilder b)]) = _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec> get serializer => _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecSerializer();
}

class _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec, _$IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec];

  @override
  final String wireName = r'IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'maxReplicas';
    yield serializers.serialize(
      object.maxReplicas,
      specifiedType: const FullType(int),
    );
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
      specifiedType: const FullType(IoK8sApiAutoscalingV1CrossVersionObjectReference),
    );
    if (object.targetCPUUtilizationPercentage != null) {
      yield r'targetCPUUtilizationPercentage';
      yield serializers.serialize(
        object.targetCPUUtilizationPercentage,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxReplicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxReplicas = valueDes;
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
            specifiedType: const FullType(IoK8sApiAutoscalingV1CrossVersionObjectReference),
          ) as IoK8sApiAutoscalingV1CrossVersionObjectReference;
          result.scaleTargetRef.replace(valueDes);
          break;
        case r'targetCPUUtilizationPercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.targetCPUUtilizationPercentage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecBuilder();
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

