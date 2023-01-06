//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_identifier.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_value_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_pods_metric_status.g.dart';

/// PodsMetricStatus indicates the current value of a metric describing each pod in the current scale target (for example, transactions-processed-per-second).
///
/// Properties:
/// * [current] 
/// * [metric] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2PodsMetricStatus implements Built<IoK8sApiAutoscalingV2PodsMetricStatus, IoK8sApiAutoscalingV2PodsMetricStatusBuilder> {
  @BuiltValueField(wireName: r'current')
  IoK8sApiAutoscalingV2MetricValueStatus get current;

  @BuiltValueField(wireName: r'metric')
  IoK8sApiAutoscalingV2MetricIdentifier get metric;

  IoK8sApiAutoscalingV2PodsMetricStatus._();

  factory IoK8sApiAutoscalingV2PodsMetricStatus([void updates(IoK8sApiAutoscalingV2PodsMetricStatusBuilder b)]) = _$IoK8sApiAutoscalingV2PodsMetricStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2PodsMetricStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2PodsMetricStatus> get serializer => _$IoK8sApiAutoscalingV2PodsMetricStatusSerializer();
}

class _$IoK8sApiAutoscalingV2PodsMetricStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2PodsMetricStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2PodsMetricStatus, _$IoK8sApiAutoscalingV2PodsMetricStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2PodsMetricStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2PodsMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'current';
    yield serializers.serialize(
      object.current,
      specifiedType: const FullType(IoK8sApiAutoscalingV2MetricValueStatus),
    );
    yield r'metric';
    yield serializers.serialize(
      object.metric,
      specifiedType: const FullType(IoK8sApiAutoscalingV2MetricIdentifier),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2PodsMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2PodsMetricStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2MetricValueStatus),
          ) as IoK8sApiAutoscalingV2MetricValueStatus;
          result.current.replace(valueDes);
          break;
        case r'metric':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2MetricIdentifier),
          ) as IoK8sApiAutoscalingV2MetricIdentifier;
          result.metric.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2PodsMetricStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2PodsMetricStatusBuilder();
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

