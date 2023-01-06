//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_deployment_strategy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_deployment_spec.g.dart';

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
///
/// Properties:
/// * [minReadySeconds] - Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
/// * [paused] - Indicates that the deployment is paused.
/// * [progressDeadlineSeconds] - The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
/// * [replicas] - Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
/// * [revisionHistoryLimit] - The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
/// * [selector] 
/// * [strategy] 
/// * [template] 
@BuiltValue()
abstract class IoK8sApiAppsV1DeploymentSpec implements Built<IoK8sApiAppsV1DeploymentSpec, IoK8sApiAppsV1DeploymentSpecBuilder> {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @BuiltValueField(wireName: r'minReadySeconds')
  int? get minReadySeconds;

  /// Indicates that the deployment is paused.
  @BuiltValueField(wireName: r'paused')
  bool? get paused;

  /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  @BuiltValueField(wireName: r'progressDeadlineSeconds')
  int? get progressDeadlineSeconds;

  /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  @BuiltValueField(wireName: r'replicas')
  int? get replicas;

  /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  @BuiltValueField(wireName: r'revisionHistoryLimit')
  int? get revisionHistoryLimit;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector get selector;

  @BuiltValueField(wireName: r'strategy')
  IoK8sApiAppsV1DeploymentStrategy? get strategy;

  @BuiltValueField(wireName: r'template')
  IoK8sApiCoreV1PodTemplateSpec get template;

  IoK8sApiAppsV1DeploymentSpec._();

  factory IoK8sApiAppsV1DeploymentSpec([void updates(IoK8sApiAppsV1DeploymentSpecBuilder b)]) = _$IoK8sApiAppsV1DeploymentSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1DeploymentSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1DeploymentSpec> get serializer => _$IoK8sApiAppsV1DeploymentSpecSerializer();
}

class _$IoK8sApiAppsV1DeploymentSpecSerializer implements PrimitiveSerializer<IoK8sApiAppsV1DeploymentSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1DeploymentSpec, _$IoK8sApiAppsV1DeploymentSpec];

  @override
  final String wireName = r'IoK8sApiAppsV1DeploymentSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1DeploymentSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minReadySeconds != null) {
      yield r'minReadySeconds';
      yield serializers.serialize(
        object.minReadySeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.paused != null) {
      yield r'paused';
      yield serializers.serialize(
        object.paused,
        specifiedType: const FullType(bool),
      );
    }
    if (object.progressDeadlineSeconds != null) {
      yield r'progressDeadlineSeconds';
      yield serializers.serialize(
        object.progressDeadlineSeconds,
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
    if (object.revisionHistoryLimit != null) {
      yield r'revisionHistoryLimit';
      yield serializers.serialize(
        object.revisionHistoryLimit,
        specifiedType: const FullType(int),
      );
    }
    yield r'selector';
    yield serializers.serialize(
      object.selector,
      specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
    );
    if (object.strategy != null) {
      yield r'strategy';
      yield serializers.serialize(
        object.strategy,
        specifiedType: const FullType(IoK8sApiAppsV1DeploymentStrategy),
      );
    }
    yield r'template';
    yield serializers.serialize(
      object.template,
      specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1DeploymentSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1DeploymentSpecBuilder result,
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
        case r'paused':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.paused = valueDes;
          break;
        case r'progressDeadlineSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.progressDeadlineSeconds = valueDes;
          break;
        case r'replicas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.replicas = valueDes;
          break;
        case r'revisionHistoryLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.revisionHistoryLimit = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.selector.replace(valueDes);
          break;
        case r'strategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1DeploymentStrategy),
          ) as IoK8sApiAppsV1DeploymentStrategy;
          result.strategy.replace(valueDes);
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
  IoK8sApiAppsV1DeploymentSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1DeploymentSpecBuilder();
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

