//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_value_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_resource_metric_status.g.dart';

/// ResourceMetricStatus indicates the current value of a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.
///
/// Properties:
/// * [current] 
/// * [name] - Name is the name of the resource in question.
@BuiltValue()
abstract class IoK8sApiAutoscalingV2ResourceMetricStatus implements Built<IoK8sApiAutoscalingV2ResourceMetricStatus, IoK8sApiAutoscalingV2ResourceMetricStatusBuilder> {
  @BuiltValueField(wireName: r'current')
  IoK8sApiAutoscalingV2MetricValueStatus get current;

  /// Name is the name of the resource in question.
  @BuiltValueField(wireName: r'name')
  String get name;

  IoK8sApiAutoscalingV2ResourceMetricStatus._();

  factory IoK8sApiAutoscalingV2ResourceMetricStatus([void updates(IoK8sApiAutoscalingV2ResourceMetricStatusBuilder b)]) = _$IoK8sApiAutoscalingV2ResourceMetricStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2ResourceMetricStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2ResourceMetricStatus> get serializer => _$IoK8sApiAutoscalingV2ResourceMetricStatusSerializer();
}

class _$IoK8sApiAutoscalingV2ResourceMetricStatusSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2ResourceMetricStatus> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2ResourceMetricStatus, _$IoK8sApiAutoscalingV2ResourceMetricStatus];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2ResourceMetricStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2ResourceMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'current';
    yield serializers.serialize(
      object.current,
      specifiedType: const FullType(IoK8sApiAutoscalingV2MetricValueStatus),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2ResourceMetricStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2ResourceMetricStatusBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2ResourceMetricStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2ResourceMetricStatusBuilder();
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

