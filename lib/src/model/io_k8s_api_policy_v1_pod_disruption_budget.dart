//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget_status.dart';
import 'package:k8s/src/model/io_k8s_api_policy_v1_pod_disruption_budget_spec.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_policy_v1_pod_disruption_budget.g.dart';

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
///
/// Properties:
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [spec] 
/// * [status] 
@BuiltValue()
abstract class IoK8sApiPolicyV1PodDisruptionBudget implements Built<IoK8sApiPolicyV1PodDisruptionBudget, IoK8sApiPolicyV1PodDisruptionBudgetBuilder> {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  @BuiltValueField(wireName: r'spec')
  IoK8sApiPolicyV1PodDisruptionBudgetSpec? get spec;

  @BuiltValueField(wireName: r'status')
  IoK8sApiPolicyV1PodDisruptionBudgetStatus? get status;

  IoK8sApiPolicyV1PodDisruptionBudget._();

  factory IoK8sApiPolicyV1PodDisruptionBudget([void updates(IoK8sApiPolicyV1PodDisruptionBudgetBuilder b)]) = _$IoK8sApiPolicyV1PodDisruptionBudget;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiPolicyV1PodDisruptionBudgetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiPolicyV1PodDisruptionBudget> get serializer => _$IoK8sApiPolicyV1PodDisruptionBudgetSerializer();
}

class _$IoK8sApiPolicyV1PodDisruptionBudgetSerializer implements PrimitiveSerializer<IoK8sApiPolicyV1PodDisruptionBudget> {
  @override
  final Iterable<Type> types = const [IoK8sApiPolicyV1PodDisruptionBudget, _$IoK8sApiPolicyV1PodDisruptionBudget];

  @override
  final String wireName = r'IoK8sApiPolicyV1PodDisruptionBudget';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiPolicyV1PodDisruptionBudget object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.spec != null) {
      yield r'spec';
      yield serializers.serialize(
        object.spec,
        specifiedType: const FullType(IoK8sApiPolicyV1PodDisruptionBudgetSpec),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(IoK8sApiPolicyV1PodDisruptionBudgetStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiPolicyV1PodDisruptionBudget object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiPolicyV1PodDisruptionBudgetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'spec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiPolicyV1PodDisruptionBudgetSpec),
          ) as IoK8sApiPolicyV1PodDisruptionBudgetSpec;
          result.spec.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiPolicyV1PodDisruptionBudgetStatus),
          ) as IoK8sApiPolicyV1PodDisruptionBudgetStatus;
          result.status.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiPolicyV1PodDisruptionBudget deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiPolicyV1PodDisruptionBudgetBuilder();
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

