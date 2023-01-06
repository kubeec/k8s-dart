//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_persistent_volume_claim_retention_policy.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_ordinals.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_pod_template_spec.dart';
import 'package:k8s/src/model/io_k8s_api_apps_v1_stateful_set_update_strategy.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_persistent_volume_claim.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apps_v1_stateful_set_spec.g.dart';

/// A StatefulSetSpec is the specification of a StatefulSet.
///
/// Properties:
/// * [minReadySeconds] - Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
/// * [ordinals] 
/// * [persistentVolumeClaimRetentionPolicy] 
/// * [podManagementPolicy] - podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.  
/// * [replicas] - replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
/// * [revisionHistoryLimit] - revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
/// * [selector] 
/// * [serviceName] - serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.
/// * [template] 
/// * [updateStrategy] 
/// * [volumeClaimTemplates] - volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
@BuiltValue()
abstract class IoK8sApiAppsV1StatefulSetSpec implements Built<IoK8sApiAppsV1StatefulSetSpec, IoK8sApiAppsV1StatefulSetSpecBuilder> {
  /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @BuiltValueField(wireName: r'minReadySeconds')
  int? get minReadySeconds;

  @BuiltValueField(wireName: r'ordinals')
  IoK8sApiAppsV1StatefulSetOrdinals? get ordinals;

  @BuiltValueField(wireName: r'persistentVolumeClaimRetentionPolicy')
  IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy? get persistentVolumeClaimRetentionPolicy;

  /// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.  
  @BuiltValueField(wireName: r'podManagementPolicy')
  String? get podManagementPolicy;

  /// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  @BuiltValueField(wireName: r'replicas')
  int? get replicas;

  /// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
  @BuiltValueField(wireName: r'revisionHistoryLimit')
  int? get revisionHistoryLimit;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector get selector;

  /// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.
  @BuiltValueField(wireName: r'serviceName')
  String get serviceName;

  @BuiltValueField(wireName: r'template')
  IoK8sApiCoreV1PodTemplateSpec get template;

  @BuiltValueField(wireName: r'updateStrategy')
  IoK8sApiAppsV1StatefulSetUpdateStrategy? get updateStrategy;

  /// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  @BuiltValueField(wireName: r'volumeClaimTemplates')
  BuiltList<IoK8sApiCoreV1PersistentVolumeClaim>? get volumeClaimTemplates;

  IoK8sApiAppsV1StatefulSetSpec._();

  factory IoK8sApiAppsV1StatefulSetSpec([void updates(IoK8sApiAppsV1StatefulSetSpecBuilder b)]) = _$IoK8sApiAppsV1StatefulSetSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAppsV1StatefulSetSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAppsV1StatefulSetSpec> get serializer => _$IoK8sApiAppsV1StatefulSetSpecSerializer();
}

class _$IoK8sApiAppsV1StatefulSetSpecSerializer implements PrimitiveSerializer<IoK8sApiAppsV1StatefulSetSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAppsV1StatefulSetSpec, _$IoK8sApiAppsV1StatefulSetSpec];

  @override
  final String wireName = r'IoK8sApiAppsV1StatefulSetSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minReadySeconds != null) {
      yield r'minReadySeconds';
      yield serializers.serialize(
        object.minReadySeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.ordinals != null) {
      yield r'ordinals';
      yield serializers.serialize(
        object.ordinals,
        specifiedType: const FullType(IoK8sApiAppsV1StatefulSetOrdinals),
      );
    }
    if (object.persistentVolumeClaimRetentionPolicy != null) {
      yield r'persistentVolumeClaimRetentionPolicy';
      yield serializers.serialize(
        object.persistentVolumeClaimRetentionPolicy,
        specifiedType: const FullType(IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy),
      );
    }
    if (object.podManagementPolicy != null) {
      yield r'podManagementPolicy';
      yield serializers.serialize(
        object.podManagementPolicy,
        specifiedType: const FullType(String),
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
    yield r'serviceName';
    yield serializers.serialize(
      object.serviceName,
      specifiedType: const FullType(String),
    );
    yield r'template';
    yield serializers.serialize(
      object.template,
      specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
    );
    if (object.updateStrategy != null) {
      yield r'updateStrategy';
      yield serializers.serialize(
        object.updateStrategy,
        specifiedType: const FullType(IoK8sApiAppsV1StatefulSetUpdateStrategy),
      );
    }
    if (object.volumeClaimTemplates != null) {
      yield r'volumeClaimTemplates';
      yield serializers.serialize(
        object.volumeClaimTemplates,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PersistentVolumeClaim)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAppsV1StatefulSetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAppsV1StatefulSetSpecBuilder result,
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
        case r'ordinals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1StatefulSetOrdinals),
          ) as IoK8sApiAppsV1StatefulSetOrdinals;
          result.ordinals.replace(valueDes);
          break;
        case r'persistentVolumeClaimRetentionPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy),
          ) as IoK8sApiAppsV1StatefulSetPersistentVolumeClaimRetentionPolicy;
          result.persistentVolumeClaimRetentionPolicy.replace(valueDes);
          break;
        case r'podManagementPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.podManagementPolicy = valueDes;
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
        case r'serviceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceName = valueDes;
          break;
        case r'template':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1PodTemplateSpec),
          ) as IoK8sApiCoreV1PodTemplateSpec;
          result.template.replace(valueDes);
          break;
        case r'updateStrategy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAppsV1StatefulSetUpdateStrategy),
          ) as IoK8sApiAppsV1StatefulSetUpdateStrategy;
          result.updateStrategy.replace(valueDes);
          break;
        case r'volumeClaimTemplates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1PersistentVolumeClaim)]),
          ) as BuiltList<IoK8sApiCoreV1PersistentVolumeClaim>;
          result.volumeClaimTemplates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAppsV1StatefulSetSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAppsV1StatefulSetSpecBuilder();
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

