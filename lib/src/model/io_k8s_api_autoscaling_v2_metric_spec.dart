//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_object_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_external_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_resource_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_container_resource_metric_source.dart';
import 'package:k8s/src/model/io_k8s_api_autoscaling_v2_pods_metric_source.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_autoscaling_v2_metric_spec.g.dart';

/// MetricSpec specifies how to scale based on a single metric (only `type` and one other matching field should be set at once).
///
/// Properties:
/// * [containerResource] 
/// * [external_] 
/// * [object] 
/// * [pods] 
/// * [resource] 
/// * [type] - type is the type of metric source.  It should be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled
@BuiltValue()
abstract class IoK8sApiAutoscalingV2MetricSpec implements Built<IoK8sApiAutoscalingV2MetricSpec, IoK8sApiAutoscalingV2MetricSpecBuilder> {
  @BuiltValueField(wireName: r'containerResource')
  IoK8sApiAutoscalingV2ContainerResourceMetricSource? get containerResource;

  @BuiltValueField(wireName: r'external')
  IoK8sApiAutoscalingV2ExternalMetricSource? get external_;

  @BuiltValueField(wireName: r'object')
  IoK8sApiAutoscalingV2ObjectMetricSource? get object;

  @BuiltValueField(wireName: r'pods')
  IoK8sApiAutoscalingV2PodsMetricSource? get pods;

  @BuiltValueField(wireName: r'resource')
  IoK8sApiAutoscalingV2ResourceMetricSource? get resource;

  /// type is the type of metric source.  It should be one of \"ContainerResource\", \"External\", \"Object\", \"Pods\" or \"Resource\", each mapping to a matching field in the object. Note: \"ContainerResource\" type is available on when the feature-gate HPAContainerMetrics is enabled
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiAutoscalingV2MetricSpec._();

  factory IoK8sApiAutoscalingV2MetricSpec([void updates(IoK8sApiAutoscalingV2MetricSpecBuilder b)]) = _$IoK8sApiAutoscalingV2MetricSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAutoscalingV2MetricSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAutoscalingV2MetricSpec> get serializer => _$IoK8sApiAutoscalingV2MetricSpecSerializer();
}

class _$IoK8sApiAutoscalingV2MetricSpecSerializer implements PrimitiveSerializer<IoK8sApiAutoscalingV2MetricSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAutoscalingV2MetricSpec, _$IoK8sApiAutoscalingV2MetricSpec];

  @override
  final String wireName = r'IoK8sApiAutoscalingV2MetricSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAutoscalingV2MetricSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.containerResource != null) {
      yield r'containerResource';
      yield serializers.serialize(
        object.containerResource,
        specifiedType: const FullType(IoK8sApiAutoscalingV2ContainerResourceMetricSource),
      );
    }
    if (object.external_ != null) {
      yield r'external';
      yield serializers.serialize(
        object.external_,
        specifiedType: const FullType(IoK8sApiAutoscalingV2ExternalMetricSource),
      );
    }
    if (object.object != null) {
      yield r'object';
      yield serializers.serialize(
        object.object,
        specifiedType: const FullType(IoK8sApiAutoscalingV2ObjectMetricSource),
      );
    }
    if (object.pods != null) {
      yield r'pods';
      yield serializers.serialize(
        object.pods,
        specifiedType: const FullType(IoK8sApiAutoscalingV2PodsMetricSource),
      );
    }
    if (object.resource != null) {
      yield r'resource';
      yield serializers.serialize(
        object.resource,
        specifiedType: const FullType(IoK8sApiAutoscalingV2ResourceMetricSource),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAutoscalingV2MetricSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAutoscalingV2MetricSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'containerResource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2ContainerResourceMetricSource),
          ) as IoK8sApiAutoscalingV2ContainerResourceMetricSource;
          result.containerResource.replace(valueDes);
          break;
        case r'external':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2ExternalMetricSource),
          ) as IoK8sApiAutoscalingV2ExternalMetricSource;
          result.external_.replace(valueDes);
          break;
        case r'object':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2ObjectMetricSource),
          ) as IoK8sApiAutoscalingV2ObjectMetricSource;
          result.object.replace(valueDes);
          break;
        case r'pods':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2PodsMetricSource),
          ) as IoK8sApiAutoscalingV2PodsMetricSource;
          result.pods.replace(valueDes);
          break;
        case r'resource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAutoscalingV2ResourceMetricSource),
          ) as IoK8sApiAutoscalingV2ResourceMetricSource;
          result.resource.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAutoscalingV2MetricSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAutoscalingV2MetricSpecBuilder();
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

