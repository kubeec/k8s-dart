//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_metric_target.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_container_resource_metric_source.g.dart';

/// ContainerResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as specified in requests and limits, describing each pod in the current scale target (e.g. CPU or memory).  The values will be averaged together before being compared to the target.  Such metrics are built in to Kubernetes, and have special scaling options on top of those available to normal per-pod metrics using the \"pods\" source.  Only one \"target\" type should be set.
///
/// Properties:
/// * [container] - container is the name of the container in the pods of the scaling target
/// * [name] - name is the name of the resource in question.
/// * [target] 
@BuiltValue()
abstract class IoK8sApiAutoscalingV2ContainerResourceMetricSource implements Built<IoK8sApiAutoscalingV2ContainerResourceMetricSource, IoK8sApiAutoscalingV2ContainerResourceMetricSourceBuilder> {
  /// container is the name of the container in the pods of the scaling target
  @BuiltValueField(wireName: r'container')
  String get container;

  /// name is the name of the resource in question.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'target')
  IoK8sApiAutoscalingV2MetricTarget get target;

  IoK8sApiAutoscalingV2ContainerResourceMetricSource._();

  factory IoK8sApiAutoscalingV2ContainerResourceMetricSource([void updates(IoK8sApiAutoscalingV2ContainerResourceMetricSourceBuilder b)]) = _$IoK8sApiAutoscalingV2ContainerResourceMetricSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2ContainerResourceMetricSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2ContainerResourceMetricSource> get serializer => _$IoK8sApiAutoscalingV2ContainerResourceMetricSourceSerializer();
}

class _$IoK8sApiAutoscalingV2ContainerResourceMetricSourceSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2ContainerResourceMetricSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2ContainerResourceMetricSource, _$IoK8sApiAutoscalingV2ContainerResourceMetricSource];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2ContainerResourceMetricSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2ContainerResourceMetricSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'container';
    yield serializers.serialize(
      object.container,
      specifiedType: const FullType(String),
    );
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
    IoK8sApiAutoscalingV2ContainerResourceMetricSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2ContainerResourceMetricSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'container':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.container = valueDes;
          break;
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
  IoK8sApiAutoscalingV2ContainerResourceMetricSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2ContainerResourceMetricSourceBuilder();
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

