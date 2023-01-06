//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_rbac_v1_aggregation_rule.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_rbac_v1_policy_rule.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_rbac_v1_cluster_role.g.dart';

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
///
/// Properties:
/// * [aggregationRule] 
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [rules] - Rules holds all the PolicyRules for this ClusterRole
@BuiltValue()
abstract class IoK8sApiRbacV1ClusterRole implements Built<IoK8sApiRbacV1ClusterRole, IoK8sApiRbacV1ClusterRoleBuilder> {
  @BuiltValueField(wireName: r'aggregationRule')
  IoK8sApiRbacV1AggregationRule? get aggregationRule;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  /// Rules holds all the PolicyRules for this ClusterRole
  @BuiltValueField(wireName: r'rules')
  BuiltList<IoK8sApiRbacV1PolicyRule>? get rules;

  IoK8sApiRbacV1ClusterRole._();

  factory IoK8sApiRbacV1ClusterRole([void updates(IoK8sApiRbacV1ClusterRoleBuilder b)]) = _$IoK8sApiRbacV1ClusterRole;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiRbacV1ClusterRoleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiRbacV1ClusterRole> get serializer => _$IoK8sApiRbacV1ClusterRoleSerializer();
}

class _$IoK8sApiRbacV1ClusterRoleSerializer implements PrimitiveSerializer<IoK8sApiRbacV1ClusterRole> {
  @override
  final Iterable<Type> types = const [IoK8sApiRbacV1ClusterRole, _$IoK8sApiRbacV1ClusterRole];

  @override
  final String wireName = r'IoK8sApiRbacV1ClusterRole';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiRbacV1ClusterRole object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.aggregationRule != null) {
      yield r'aggregationRule';
      yield serializers.serialize(
        object.aggregationRule,
        specifiedType: const FullType(IoK8sApiRbacV1AggregationRule),
      );
    }
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
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiRbacV1PolicyRule)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiRbacV1ClusterRole object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiRbacV1ClusterRoleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'aggregationRule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiRbacV1AggregationRule),
          ) as IoK8sApiRbacV1AggregationRule;
          result.aggregationRule.replace(valueDes);
          break;
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
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiRbacV1PolicyRule)]),
          ) as BuiltList<IoK8sApiRbacV1PolicyRule>;
          result.rules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiRbacV1ClusterRole deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiRbacV1ClusterRoleBuilder();
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

