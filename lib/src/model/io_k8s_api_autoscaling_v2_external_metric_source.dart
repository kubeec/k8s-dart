//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_identifier.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_external_metric_source.g.dart';

/// ExternalMetricSource indicates how to scale on a metric not associated with any Kubernetes object (for example length of queue in cloud messaging service, or QPS from loadbalancer running outside of cluster).
///
/// Properties:
/// * [metric] 
/// * [target] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2ExternalMetricSource implements Built<IoK8sApiAutoscalingV2ExternalMetricSource, IoK8sApiAutoscalingV2ExternalMetricSourceBuilder> {
  @BuiltValueField(wireName: r'metric')
  IoK8sApiAutoscalingV2MetricIdentifier get metric;

  @BuiltValueField(wireName: r'target')
  IoK8sApiAutoscalingV2MetricTarget get target;

  IoK8sApiAutoscalingV2ExternalMetricSource._();

  factory IoK8sApiAutoscalingV2ExternalMetricSource([void updates(IoK8sApiAutoscalingV2ExternalMetricSourceBuilder b)]) = _$IoK8sApiAutoscalingV2ExternalMetricSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2ExternalMetricSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2ExternalMetricSource> get serializer => _$IoK8sApiAutoscalingV2ExternalMetricSourceSerializer();
}

class _$IoK8sApiAutoscalingV2ExternalMetricSourceSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2ExternalMetricSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2ExternalMetricSource, _$IoK8sApiAutoscalingV2ExternalMetricSource];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2ExternalMetricSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2ExternalMetricSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'metric';
    yield serializers.serialize(
      object.metric,
      specifiedType: const FullType(IoK8sApiAutoscalingV2MetricIdentifier),
    );
    yield r'target';
    yield serializers.serialize(
      object.target,
      specifiedType: const FullType(IoK8sApiAutoscalingV2MetricTarget),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2ExternalMetricSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2ExternalMetricSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metric':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2MetricIdentifier),
          ) as IoK8sApiAutoscalingV2MetricIdentifier;
          result.metric.replace(valueDes);
          break;
        case r'target':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2MetricTarget),
          ) as IoK8sApiAutoscalingV2MetricTarget;
          result.target.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2ExternalMetricSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2ExternalMetricSourceBuilder();
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

