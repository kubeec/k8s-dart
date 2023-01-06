//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_rbac_v1_policy_rule.g.dart';

/// PolicyRule holds information that describes a policy rule, but does not contain information about who the rule applies to or which namespace the rule applies to.
///
/// Properties:
/// * [apiGroups] - APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. \"\" represents the core API group and \"*\" represents all API groups.
/// * [nonResourceURLs] - NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as \"/api\"),  but not both.
/// * [resourceNames] - ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
/// * [resources] - Resources is a list of resources this rule applies to. '*' represents all resources.
/// * [verbs] - Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
@BuiltValue()
abstract class IoK8sApiRbacV1PolicyRule implements Built<IoK8sApiRbacV1PolicyRule, IoK8sApiRbacV1PolicyRuleBuilder> {
  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed. \"\" represents the core API group and \"*\" represents all API groups.
  @BuiltValueField(wireName: r'apiGroups')
  BuiltList<String>? get apiGroups;

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding. Rules can either apply to API resources (such as \"pods\" or \"secrets\") or non-resource URL paths (such as \"/api\"),  but not both.
  @BuiltValueField(wireName: r'nonResourceURLs')
  BuiltList<String>? get nonResourceURLs;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  @BuiltValueField(wireName: r'resourceNames')
  BuiltList<String>? get resourceNames;

  /// Resources is a list of resources this rule applies to. '*' represents all resources.
  @BuiltValueField(wireName: r'resources')
  BuiltList<String>? get resources;

  /// Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
  @BuiltValueField(wireName: r'verbs')
  BuiltList<String> get verbs;

  IoK8sApiRbacV1PolicyRule._();

  factory IoK8sApiRbacV1PolicyRule([void updates(IoK8sApiRbacV1PolicyRuleBuilder b)]) = _$IoK8sApiRbacV1PolicyRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiRbacV1PolicyRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiRbacV1PolicyRule> get serializer => _$IoK8sApiRbacV1PolicyRuleSerializer();
}

class _$IoK8sApiRbacV1PolicyRuleSerializer implements PrimitiveSerializer<IoK8sApiRbacV1PolicyRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiRbacV1PolicyRule, _$IoK8sApiRbacV1PolicyRule];

  @override
  final String wireName = r'IoK8sApiRbacV1PolicyRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiRbacV1PolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiGroups != null) {
      yield r'apiGroups';
      yield serializers.serialize(
        object.apiGroups,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.nonResourceURLs != null) {
      yield r'nonResourceURLs';
      yield serializers.serialize(
        object.nonResourceURLs,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.resourceNames != null) {
      yield r'resourceNames';
      yield serializers.serialize(
        object.resourceNames,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.resources != null) {
      yield r'resources';
      yield serializers.serialize(
        object.resources,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'verbs';
    yield serializers.serialize(
      object.verbs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiRbacV1PolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiRbacV1PolicyRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiGroups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.apiGroups.replace(valueDes);
          break;
        case r'nonResourceURLs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nonResourceURLs.replace(valueDes);
          break;
        case r'resourceNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.resourceNames.replace(valueDes);
          break;
        case r'resources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.resources.replace(valueDes);
          break;
        case r'verbs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.verbs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiRbacV1PolicyRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiRbacV1PolicyRuleBuilder();
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

