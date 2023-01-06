//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_replication_controller_spec.g.dart';

/// ReplicationControllerSpec is the specification of a replication controller.
///
/// Properties:
/// * [minReadySeconds] - Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
/// * [replicas] - Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
/// * [selector] - Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
/// * [template] 
@BuiltValue()
abstract class IoK8sApiCoreV1ReplicationControllerSpec implements Built<IoK8sApiCoreV1ReplicationControllerSpec, IoK8sApiCoreV1ReplicationControllerSpecBuilder> {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @BuiltValueField(wireName: r'minReadySeconds')
  int? get minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  @BuiltValueField(wireName: r'replicas')
  int? get replicas;

  /// Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  @BuiltValueField(wireName: r'selector')
  BuiltMap<String, String>? get selector;

  @BuiltValueField(wireName: r'template')
  IoK8sApiCoreV1PodTemplateSpec? get template;

  IoK8sApiCoreV1ReplicationControllerSpec._();

  factory IoK8sApiCoreV1ReplicationControllerSpec([void updates(IoK8sApiCoreV1ReplicationControllerSpecBuilder b)]) = _$IoK8sApiCoreV1ReplicationControllerSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ReplicationControllerSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ReplicationControllerSpec> get serializer => _$IoK8sApiCoreV1ReplicationControllerSpecSerializer();
}

class _$IoK8sApiCoreV1ReplicationControllerSpecSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ReplicationControllerSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ReplicationControllerSpec, _$IoK8sApiCoreV1ReplicationControllerSpec];

  @override
  final String wireName = r'IoK8sApiCoreV1ReplicationControllerSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ReplicationControllerSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minReadySeconds != null) {
      yield r'minReadySeconds';
      yield serializers.serialize(
        object.minReadySeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.replicas != null) {
      yield r'replicas';
      yield serializers.serialize(
        object.replicas,
        specifiedType: const FullType(int),
      );
    }
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.template != null) {
      yield r'template';
      yield serializers.serialize(
        object.template,
        specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ReplicationControllerSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ReplicationControllerSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minReadySeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.minReadySeconds = valueDes;
          break;
        case r'replicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.replicas = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.selector.replace(valueDes);
          break;
        case r'template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
          ) as IoK8sApiCoreV1PodTemplateSpec;
          result.template.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ReplicationControllerSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ReplicationControllerSpecBuilder();
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

