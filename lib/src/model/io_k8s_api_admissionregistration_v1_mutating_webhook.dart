//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_webhook_client_config.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_label_selector.dart';
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1_rule_with_operations.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1_mutating_webhook.g.dart';

/// MutatingWebhook describes an admission webhook and the resources and operations it applies to.
///
/// Properties:
/// * [admissionReviewVersions] - AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
/// * [clientConfig] 
/// * [failurePolicy] - FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
/// * [matchPolicy] - matchPolicy defines how the \"rules\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.  Defaults to \"Equivalent\"
/// * [name] - The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
/// * [namespaceSelector] 
/// * [objectSelector] 
/// * [reinvocationPolicy] - reinvocationPolicy indicates whether this webhook should be called multiple times as part of a single admission evaluation. Allowed values are \"Never\" and \"IfNeeded\".  Never: the webhook will not be called more than once in a single admission evaluation.  IfNeeded: the webhook will be called at least one additional time as part of the admission evaluation if the object being admitted is modified by other admission plugins after the initial webhook call. Webhooks that specify this option *must* be idempotent, able to process objects they previously admitted. Note: * the number of additional invocations is not guaranteed to be exactly one. * if additional invocations result in further modifications to the object, webhooks are not guaranteed to be invoked again. * webhooks that use this option may be reordered to minimize the number of additional invocations. * to validate an object after all mutations are guaranteed complete, use a validating admission webhook instead.  Defaults to \"Never\".
/// * [rules] - Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
/// * [sideEffects] - SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
/// * [timeoutSeconds] - TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1MutatingWebhook implements Built<IoK8sApiAdmissionregistrationV1MutatingWebhook, IoK8sApiAdmissionregistrationV1MutatingWebhookBuilder> {
  /// AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
  @BuiltValueField(wireName: r'admissionReviewVersions')
  BuiltList<String> get admissionReviewVersions;

  @BuiltValueField(wireName: r'clientConfig')
  IoK8sApiAdmissionregistrationV1WebhookClientConfig get clientConfig;

  /// FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
  @BuiltValueField(wireName: r'failurePolicy')
  String? get failurePolicy;

  /// matchPolicy defines how the \"rules\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.  Defaults to \"Equivalent\"
  @BuiltValueField(wireName: r'matchPolicy')
  String? get matchPolicy;

  /// The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'namespaceSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get namespaceSelector;

  @BuiltValueField(wireName: r'objectSelector')
  IoK8sApimachineryPkgApisMetaV1LabelSelector? get objectSelector;

  /// reinvocationPolicy indicates whether this webhook should be called multiple times as part of a single admission evaluation. Allowed values are \"Never\" and \"IfNeeded\".  Never: the webhook will not be called more than once in a single admission evaluation.  IfNeeded: the webhook will be called at least one additional time as part of the admission evaluation if the object being admitted is modified by other admission plugins after the initial webhook call. Webhooks that specify this option *must* be idempotent, able to process objects they previously admitted. Note: * the number of additional invocations is not guaranteed to be exactly one. * if additional invocations result in further modifications to the object, webhooks are not guaranteed to be invoked again. * webhooks that use this option may be reordered to minimize the number of additional invocations. * to validate an object after all mutations are guaranteed complete, use a validating admission webhook instead.  Defaults to \"Never\".
  @BuiltValueField(wireName: r'reinvocationPolicy')
  String? get reinvocationPolicy;

  /// Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
  @BuiltValueField(wireName: r'rules')
  BuiltList<IoK8sApiAdmissionregistrationV1RuleWithOperations>? get rules;

  /// SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
  @BuiltValueField(wireName: r'sideEffects')
  String get sideEffects;

  /// TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
  @BuiltValueField(wireName: r'timeoutSeconds')
  int? get timeoutSeconds;

  IoK8sApiAdmissionregistrationV1MutatingWebhook._();

  factory IoK8sApiAdmissionregistrationV1MutatingWebhook([void updates(IoK8sApiAdmissionregistrationV1MutatingWebhookBuilder b)]) = _$IoK8sApiAdmissionregistrationV1MutatingWebhook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1MutatingWebhookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1MutatingWebhook> get serializer => _$IoK8sApiAdmissionregistrationV1MutatingWebhookSerializer();
}

class _$IoK8sApiAdmissionregistrationV1MutatingWebhookSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1MutatingWebhook> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1MutatingWebhook, _$IoK8sApiAdmissionregistrationV1MutatingWebhook];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1MutatingWebhook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1MutatingWebhook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'admissionReviewVersions';
    yield serializers.serialize(
      object.admissionReviewVersions,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'clientConfig';
    yield serializers.serialize(
      object.clientConfig,
      specifiedType: const FullType(IoK8sApiAdmissionregistrationV1WebhookClientConfig),
    );
    if (object.failurePolicy != null) {
      yield r'failurePolicy';
      yield serializers.serialize(
        object.failurePolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.matchPolicy != null) {
      yield r'matchPolicy';
      yield serializers.serialize(
        object.matchPolicy,
        specifiedType: const FullType(String),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
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
    if (object.reinvocationPolicy != null) {
      yield r'reinvocationPolicy';
      yield serializers.serialize(
        object.reinvocationPolicy,
        specifiedType: const FullType(String),
      );
    }
    if (object.rules != null) {
      yield r'rules';
      yield serializers.serialize(
        object.rules,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1RuleWithOperations)]),
      );
    }
    yield r'sideEffects';
    yield serializers.serialize(
      object.sideEffects,
      specifiedType: const FullType(String),
    );
    if (object.timeoutSeconds != null) {
      yield r'timeoutSeconds';
      yield serializers.serialize(
        object.timeoutSeconds,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1MutatingWebhook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1MutatingWebhookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'admissionReviewVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.admissionReviewVersions.replace(valueDes);
          break;
        case r'clientConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAdmissionregistrationV1WebhookClientConfig),
          ) as IoK8sApiAdmissionregistrationV1WebhookClientConfig;
          result.clientConfig.replace(valueDes);
          break;
        case r'failurePolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.failurePolicy = valueDes;
          break;
        case r'matchPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matchPolicy = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
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
        case r'reinvocationPolicy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reinvocationPolicy = valueDes;
          break;
        case r'rules':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiAdmissionregistrationV1RuleWithOperations)]),
          ) as BuiltList<IoK8sApiAdmissionregistrationV1RuleWithOperations>;
          result.rules.replace(valueDes);
          break;
        case r'sideEffects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sideEffects = valueDes;
          break;
        case r'timeoutSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.timeoutSeconds = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1MutatingWebhook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1MutatingWebhookBuilder();
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

