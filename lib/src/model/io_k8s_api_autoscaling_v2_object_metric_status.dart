//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_identifier.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_value_status.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_cross_version_object_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_object_metric_status.g.dart';

/// ObjectMetricStatus indicates the current value of a metric describing a kubernetes object (for example, hits-per-second on an Ingress object).
///
/// Properties:
/// * [current] 
/// * [describedObject] 
/// * [metric] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2ObjectMetricStatus implements Built<IoK8sApiAutoscalingV2ObjectMetricStatus, IoK8sApiAutoscalingV2ObjectMetricStatusBuilder> {
  @BuiltValueField(wireName: r'current')
  IoK8sApiAutoscalingV2MetricValueStatus get current;

  @BuiltValueField(wireName: r'describedObject')
  IoK8sApiAutoscalingV2CrossVersionObjectReference get describedObject;

  @BuiltValueField(wireName: r'metric')
  IoK8sApiAutoscalingV2MetricIdentifier get metric;

  IoK8sApiAutoscalingV2ObjectMetricStatus._();

  factory IoK8sApiAutoscalingV2ObjectMetricStatus([void updates(IoK8sApiAutoscalingV2ObjectMetricStatusBuilder b)]) = _$IoK8sApiAutoscalingV2ObjectMetricStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2ObjectMetricStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2ObjectMetricStatus> get serializer => _$IoK8sApiAutoscalingV2ObjectMetricStatusSerializer();
}

class _$IoK8sApiAutoscalingV2ObjectMetricStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2ObjectMetricStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2ObjectMetricStatus, _$IoK8sApiAutoscalingV2ObjectMetricStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2ObjectMetricStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2ObjectMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'current';
    yield serializers.serialize(
      object.current,
      specifiedType: const FullType(IoK8sApiAutoscalingV2MetricValueStatus),
    );
    yield r'describedObject';
    yield serializers.serialize(
      object.describedObject,
      specifiedType: const FullType(IoK8sApiAutoscalingV2CrossVersionObjectReference),
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
    IoK8sApiAutoscalingV2ObjectMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2ObjectMetricStatusBuilder result,
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
        case r'describedObject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2CrossVersionObjectReference),
          ) as IoK8sApiAutoscalingV2CrossVersionObjectReference;
          result.describedObject.replace(valueDes);
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
  IoK8sApiAutoscalingV2ObjectMetricStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2ObjectMetricStatusBuilder();
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

