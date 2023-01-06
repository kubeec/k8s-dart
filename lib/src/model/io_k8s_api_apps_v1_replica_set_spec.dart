//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_replica_set_spec.g.dart';

/// ReplicaSetSpec is the specification of a ReplicaSet.
///
/// Properties:
/// * [minReadySeconds] - Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
/// * [replicas] - Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
/// * [selector] 
/// * [template] 
@BuiltValue()
abstract class IoK8sApiAppsV1ReplicaSetSpec implements Built<IoK8sApiAppsV1ReplicaSetSpec, IoK8sApiAppsV1ReplicaSetSpecBuilder> {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @BuiltValueField(wireName: r'minReadySeconds')
  int? get minReadySeconds;

  /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  @BuiltValueField(wireName: r'replicas')
  int? get replicas;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector get selector;

  @BuiltValueField(wireName: r'template')
  IoK8sApiCoreV1PodTemplateSpec? get template;

  IoK8sApiAppsV1ReplicaSetSpec._();

  factory IoK8sApiAppsV1ReplicaSetSpec([void updates(IoK8sApiAppsV1ReplicaSetSpecBuilder b)]) = _$IoK8sApiAppsV1ReplicaSetSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1ReplicaSetSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1ReplicaSetSpec> get serializer => _$IoK8sApiAppsV1ReplicaSetSpecSerializer();
}

class _$IoK8sApiAppsV1ReplicaSetSpecSerializer implements PrimitiveSerializer<IoK8sApiAppsV1ReplicaSetSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1ReplicaSetSpec, _$IoK8sApiAppsV1ReplicaSetSpec];

  @override
  final String wireName = r'IoK8sApiAppsV1ReplicaSetSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1ReplicaSetSpec object, {
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
    yield r'selector';
    yield serializers.serialize(
      object.selector,
      specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
    );
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
    IoK8sApiAppsV1ReplicaSetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1ReplicaSetSpecBuilder result,
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
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
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
  IoK8sApiAppsV1ReplicaSetSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1ReplicaSetSpecBuilder();
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

