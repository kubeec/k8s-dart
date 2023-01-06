//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_identifier.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_value_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_external_metric_status.g.dart';

/// ExternalMetricStatus indicates the current value of a global metric not associated with any Kubernetes object.
///
/// Properties:
/// * [current] 
/// * [metric] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2ExternalMetricStatus implements Built<IoK8sApiAutoscalingV2ExternalMetricStatus, IoK8sApiAutoscalingV2ExternalMetricStatusBuilder> {
  @BuiltValueField(wireName: r'current')
  IoK8sApiAutoscalingV2MetricValueStatus get current;

  @BuiltValueField(wireName: r'metric')
  IoK8sApiAutoscalingV2MetricIdentifier get metric;

  IoK8sApiAutoscalingV2ExternalMetricStatus._();

  factory IoK8sApiAutoscalingV2ExternalMetricStatus([void updates(IoK8sApiAutoscalingV2ExternalMetricStatusBuilder b)]) = _$IoK8sApiAutoscalingV2ExternalMetricStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2ExternalMetricStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2ExternalMetricStatus> get serializer => _$IoK8sApiAutoscalingV2ExternalMetricStatusSerializer();
}

class _$IoK8sApiAutoscalingV2ExternalMetricStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2ExternalMetricStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2ExternalMetricStatus, _$IoK8sApiAutoscalingV2ExternalMetricStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2ExternalMetricStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2ExternalMetricStatus object, {
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
    IoK8sApiAutoscalingV2ExternalMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2ExternalMetricStatusBuilder result,
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
  IoK8sApiAutoscalingV2ExternalMetricStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2ExternalMetricStatusBuilder();
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

