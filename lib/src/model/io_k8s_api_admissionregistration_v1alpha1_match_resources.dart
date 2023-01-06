//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_named_rule_with_operations.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_match_resources.g.dart';

/// MatchResources decides whether to run the admission control policy on an object based on whether it meets the match criteria. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
///
/// Properties:
/// * [excludeResourceRules] - ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
/// * [matchPolicy] - matchPolicy defines how the \"MatchResources\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.  Defaults to \"Equivalent\"
/// * [namespaceSelector] 
/// * [objectSelector] 
/// * [resourceRules] - ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1MatchResources implements Built<IoK8sApiAdmissionregistrationV1alpha1MatchResources, IoK8sApiAdmissionregistrationV1alpha1MatchResourcesBuilder> {
  /// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  @BuiltValueField(wireName: r'excludeResourceRules')
  BuiltList<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations>? get excludeResourceRules;

  /// matchPolicy defines how the \"MatchResources\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.  Defaults to \"Equivalent\"
  @BuiltValueField(wireName: r'matchPolicy')
  String? get matchPolicy;

  @BuiltValueField(wireName: r'namespaceSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get namespaceSelector;

  @BuiltValueField(wireName: r'objectSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get objectSelector;

  /// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
  @BuiltValueField(wireName: r'resourceRules')
  BuiltList<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations>? get resourceRules;

  IoK8sApiAdmissionregistrationV1alpha1MatchResources._();

  factory IoK8sApiAdmissionregistrationV1alpha1MatchResources([void updates(IoK8sApiAdmissionregistrationV1alpha1MatchResourcesBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1MatchResources;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1MatchResourcesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1MatchResources> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1MatchResourcesSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1MatchResourcesSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1MatchResources> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1MatchResources, _$IoK8sApiAdmissionregistrationV1alpha1MatchResources];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1MatchResources';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1MatchResources object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.excludeResourceRules != null) {
      yield r'excludeResourceRules';
      yield serializers.serialize(
        object.excludeResourceRules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations)]),
      );
    }
    if (object.matchPolicy != null) {
      yield r'matchPolicy';
      yield serializers.serialize(
        object.matchPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.namespaceSelector != null) {
      yield r'namespaceSelector';
      yield serializers.serialize(
        object.namespaceSelector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.objectSelector != null) {
      yield r'objectSelector';
      yield serializers.serialize(
        object.objectSelector,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
      );
    }
    if (object.resourceRules != null) {
      yield r'resourceRules';
      yield serializers.serialize(
        object.resourceRules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1MatchResources object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1MatchResourcesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'excludeResourceRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations)]),
          ) as BuiltList<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations>;
          result.excludeResourceRules.replace(valueDes);
          break;
        case r'matchPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matchPolicy = valueDes;
          break;
        case r'namespaceSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.namespaceSelector.replace(valueDes);
          break;
        case r'objectSelector':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1LabelSelector),
          ) as IoK8sApimachineryPkgApisMetaV1LabelSelector;
          result.objectSelector.replace(valueDes);
          break;
        case r'resourceRules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations)]),
          ) as BuiltList<IoK8sApiAdmissionregistrationV1alpha1NamedRuleWithOperations>;
          result.resourceRules.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1alpha1MatchResources deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1MatchResourcesBuilder();
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

