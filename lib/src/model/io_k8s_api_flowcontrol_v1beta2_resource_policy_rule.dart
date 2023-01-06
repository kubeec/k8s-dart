//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta2_resource_policy_rule.g.dart';

/// ResourcePolicyRule is a predicate that matches some resource requests, testing the request's verb and the target resource. A ResourcePolicyRule matches a resource request if and only if: (a) at least one member of verbs matches the request, (b) at least one member of apiGroups matches the request, (c) at least one member of resources matches the request, and (d) either (d1) the request does not specify a namespace (i.e., `Namespace==\"\"`) and clusterScope is true or (d2) the request specifies a namespace and least one member of namespaces matches the request's namespace.
///
/// Properties:
/// * [apiGroups] - `apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required.
/// * [clusterScope] - `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
/// * [namespaces] - `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
/// * [resources] - `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", \"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.
/// * [verbs] - `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta2ResourcePolicyRule implements Built<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule, IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleBuilder> {
  /// `apiGroups` is a list of matching API groups and may not be empty. \"*\" matches all API groups and, if present, must be the only entry. Required.
  @BuiltValueField(wireName: r'apiGroups')
  BuiltList<String> get apiGroups;

  /// `clusterScope` indicates whether to match requests that do not specify a namespace (which happens either because the resource is not namespaced or the request targets all namespaces). If this field is omitted or false then the `namespaces` field must contain a non-empty list.
  @BuiltValueField(wireName: r'clusterScope')
  bool? get clusterScope;

  /// `namespaces` is a list of target namespaces that restricts matches.  A request that specifies a target namespace matches only if either (a) this list contains that target namespace or (b) this list contains \"*\".  Note that \"*\" matches any specified namespace but does not match a request that _does not specify_ a namespace (see the `clusterScope` field for that). This list may be empty, but only if `clusterScope` is true.
  @BuiltValueField(wireName: r'namespaces')
  BuiltList<String>? get namespaces;

  /// `resources` is a list of matching resources (i.e., lowercase and plural) with, if desired, subresource.  For example, [ \"services\", \"nodes/status\" ].  This list may not be empty. \"*\" matches all resources and, if present, must be the only entry. Required.
  @BuiltValueField(wireName: r'resources')
  BuiltList<String> get resources;

  /// `verbs` is a list of matching verbs and may not be empty. \"*\" matches all verbs and, if present, must be the only entry. Required.
  @BuiltValueField(wireName: r'verbs')
  BuiltList<String> get verbs;

  IoK8sApiFlowcontrolV1beta2ResourcePolicyRule._();

  factory IoK8sApiFlowcontrolV1beta2ResourcePolicyRule([void updates(IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleBuilder b)]) = _$IoK8sApiFlowcontrolV1beta2ResourcePolicyRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule> get serializer => _$IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleSerializer();
}

class _$IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta2ResourcePolicyRule> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta2ResourcePolicyRule, _$IoK8sApiFlowcontrolV1beta2ResourcePolicyRule];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta2ResourcePolicyRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2ResourcePolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'apiGroups';
    yield serializers.serialize(
      object.apiGroups,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.clusterScope != null) {
      yield r'clusterScope';
      yield serializers.serialize(
        object.clusterScope,
        specifiedType: const FullType(bool),
      );
    }
    if (object.namespaces != null) {
      yield r'namespaces';
      yield serializers.serialize(
        object.namespaces,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'resources';
    yield serializers.serialize(
      object.resources,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'verbs';
    yield serializers.serialize(
      object.verbs,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2ResourcePolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleBuilder result,
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
        case r'clusterScope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.clusterScope = valueDes;
          break;
        case r'namespaces':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.namespaces.replace(valueDes);
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
  IoK8sApiFlowcontrolV1beta2ResourcePolicyRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta2ResourcePolicyRuleBuilder();
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

