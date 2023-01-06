//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_resource_metric_source.g.dart';

/// ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.  Only one \"target\" type should be set.
///
/// Properties:
/// * [name] - name is the name of the resource in question.
/// * [target] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2ResourceMetricSource implements Built<IoK8sApiAutoscalingV2ResourceMetricSource, IoK8sApiAutoscalingV2ResourceMetricSourceBuilder> {
  /// name is the name of the resource in question.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'target')
  IoK8sApiAutoscalingV2MetricTarget get target;

  IoK8sApiAutoscalingV2ResourceMetricSource._();

  factory IoK8sApiAutoscalingV2ResourceMetricSource([void updates(IoK8sApiAutoscalingV2ResourceMetricSourceBuilder b)]) = _$IoK8sApiAutoscalingV2ResourceMetricSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2ResourceMetricSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2ResourceMetricSource> get serializer => _$IoK8sApiAutoscalingV2ResourceMetricSourceSerializer();
}

class _$IoK8sApiAutoscalingV2ResourceMetricSourceSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2ResourceMetricSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2ResourceMetricSource, _$IoK8sApiAutoscalingV2ResourceMetricSource];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2ResourceMetricSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2ResourceMetricSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
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
    IoK8sApiAutoscalingV2ResourceMetricSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2ResourceMetricSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
  IoK8sApiAutoscalingV2ResourceMetricSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2ResourceMetricSourceBuilder();
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

