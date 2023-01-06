//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_authorization_v1_resource_rule.g.dart';

/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
///
/// Properties:
/// * [apiGroups] - APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.
/// * [resourceNames] - ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.
/// * [resources] - Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.  \"*_/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.
/// * [verbs] - Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
@BuiltValue()
abstract class IoK8sApiAuthorizationV1ResourceRule implements Built<IoK8sApiAuthorizationV1ResourceRule, IoK8sApiAuthorizationV1ResourceRuleBuilder> {
  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of the enumerated resources in any API group will be allowed.  \"*\" means all.
  @BuiltValueField(wireName: r'apiGroups')
  BuiltList<String>? get apiGroups;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  \"*\" means all.
  @BuiltValueField(wireName: r'resourceNames')
  BuiltList<String>? get resourceNames;

  /// Resources is a list of resources this rule applies to.  \"*\" means all in the specified apiGroups.  \"*_/foo\" represents the subresource 'foo' for all resources in the specified apiGroups.
  @BuiltValueField(wireName: r'resources')
  BuiltList<String>? get resources;

  /// Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  \"*\" means all.
  @BuiltValueField(wireName: r'verbs')
  BuiltList<String> get verbs;

  IoK8sApiAuthorizationV1ResourceRule._();

  factory IoK8sApiAuthorizationV1ResourceRule([void updates(IoK8sApiAuthorizationV1ResourceRuleBuilder b)]) = _$IoK8sApiAuthorizationV1ResourceRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAuthorizationV1ResourceRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAuthorizationV1ResourceRule> get serializer => _$IoK8sApiAuthorizationV1ResourceRuleSerializer();
}

class _$IoK8sApiAuthorizationV1ResourceRuleSerializer implements PrimitiveSerializer<IoK8sApiAuthorizationV1ResourceRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiAuthorizationV1ResourceRule, _$IoK8sApiAuthorizationV1ResourceRule];

  @override
  final String wireName = r'IoK8sApiAuthorizationV1ResourceRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAuthorizationV1ResourceRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiGroups != null) {
      yield r'apiGroups';
      yield serializers.serialize(
        object.apiGroups,
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
    IoK8sApiAuthorizationV1ResourceRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAuthorizationV1ResourceRuleBuilder result,
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
  IoK8sApiAuthorizationV1ResourceRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAuthorizationV1ResourceRuleBuilder();
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

