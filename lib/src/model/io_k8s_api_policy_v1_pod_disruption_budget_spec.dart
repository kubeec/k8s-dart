//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_policy_v1_pod_disruption_budget_spec.g.dart';

/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
///
/// Properties:
/// * [maxUnavailable] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
/// * [minAvailable] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
/// * [selector] 
/// * [unhealthyPodEvictionPolicy] - UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type=\"Ready\",status=\"True\".  Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.  IfHealthyBudget policy means that running pods (status.phase=\"Running\"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.  AlwaysAllow policy means that all running pods (status.phase=\"Running\"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.  Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.  This field is alpha-level. The eviction API uses this field when the feature gate PDBUnhealthyPodEvictionPolicy is enabled (disabled by default).
@BuiltValue()
abstract class IoK8sApiPolicyV1PodDisruptionBudgetSpec implements Built<IoK8sApiPolicyV1PodDisruptionBudgetSpec, IoK8sApiPolicyV1PodDisruptionBudgetSpecBuilder> {
  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'maxUnavailable')
  String? get maxUnavailable;

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'minAvailable')
  String? get minAvailable;

  @BuiltValueField(wireName: r'selector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get selector;

  /// UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods should be considered for eviction. Current implementation considers healthy pods, as pods that have status.conditions item with type=\"Ready\",status=\"True\".  Valid policies are IfHealthyBudget and AlwaysAllow. If no policy is specified, the default behavior will be used, which corresponds to the IfHealthyBudget policy.  IfHealthyBudget policy means that running pods (status.phase=\"Running\"), but not yet healthy can be evicted only if the guarded application is not disrupted (status.currentHealthy is at least equal to status.desiredHealthy). Healthy pods will be subject to the PDB for eviction.  AlwaysAllow policy means that all running pods (status.phase=\"Running\"), but not yet healthy are considered disrupted and can be evicted regardless of whether the criteria in a PDB is met. This means perspective running pods of a disrupted application might not get a chance to become healthy. Healthy pods will be subject to the PDB for eviction.  Additional policies may be added in the future. Clients making eviction decisions should disallow eviction of unhealthy pods if they encounter an unrecognized policy in this field.  This field is alpha-level. The eviction API uses this field when the feature gate PDBUnhealthyPodEvictionPolicy is enabled (disabled by default).
  @BuiltValueField(wireName: r'unhealthyPodEvictionPolicy')
  String? get unhealthyPodEvictionPolicy;

  IoK8sApiPolicyV1PodDisruptionBudgetSpec._();

  factory IoK8sApiPolicyV1PodDisruptionBudgetSpec([void updates(IoK8sApiPolicyV1PodDisruptionBudgetSpecBuilder b)]) = _$IoK8sApiPolicyV1PodDisruptionBudgetSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiPolicyV1PodDisruptionBudgetSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiPolicyV1PodDisruptionBudgetSpec> get serializer => _$IoK8sApiPolicyV1PodDisruptionBudgetSpecSerializer();
}

class _$IoK8sApiPolicyV1PodDisruptionBudgetSpecSerializer implements PrimitiveSerializer<IoK8sApiPolicyV1PodDisruptionBudgetSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiPolicyV1PodDisruptionBudgetSpec, _$IoK8sApiPolicyV1PodDisruptionBudgetSpec];

  @override
  final String wireName = r'IoK8sApiPolicyV1PodDisruptionBudgetSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiPolicyV1PodDisruptionBudgetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxUnavailable != null) {
      yield r'maxUnavailable';
      yield serializers.serialize(
        object.maxUnavailable,
        specifiedType: const FullType(String),
      );
    }
    if (object.minAvailable != null) {
      yield r'minAvailable';
      yield serializers.serialize(
        object.minAvailable,
        specifiedType: const FullType(String),
      );
    }
    if (object.selector != null) {
      yield r'selector';
      yield serializers.serialize(
        object.selector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.unhealthyPodEvictionPolicy != null) {
      yield r'unhealthyPodEvictionPolicy';
      yield serializers.serialize(
        object.unhealthyPodEvictionPolicy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiPolicyV1PodDisruptionBudgetSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiPolicyV1PodDisruptionBudgetSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maxUnavailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maxUnavailable = valueDes;
          break;
        case r'minAvailable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minAvailable = valueDes;
          break;
        case r'selector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.selector.replace(valueDes);
          break;
        case r'unhealthyPodEvictionPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unhealthyPodEvictionPolicy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiPolicyV1PodDisruptionBudgetSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiPolicyV1PodDisruptionBudgetSpecBuilder();
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

