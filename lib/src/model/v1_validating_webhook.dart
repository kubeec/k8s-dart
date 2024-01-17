//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_match_condition.dart';
import 'package:k8s/src/model/v1_rule_with_operations.dart';
import 'package:k8s/src/model/admissionregistration_v1_webhook_client_config.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_validating_webhook.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ValidatingWebhook {
  /// Returns a new [V1ValidatingWebhook] instance.
  V1ValidatingWebhook({

    required  this.admissionReviewVersions,

    required  this.clientConfig,

     this.failurePolicy,

     this.matchConditions,

     this.matchPolicy,

    required  this.name,

     this.namespaceSelector,

     this.objectSelector,

     this.rules,

    required  this.sideEffects,

     this.timeoutSeconds,
  });

      /// AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
  @JsonKey(
    
    name: r'admissionReviewVersions',
    required: true,
    includeIfNull: false
  )


  final List<String> admissionReviewVersions;



  @JsonKey(
    
    name: r'clientConfig',
    required: true,
    includeIfNull: false
  )


  final AdmissionregistrationV1WebhookClientConfig clientConfig;



      /// FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
  @JsonKey(
    
    name: r'failurePolicy',
    required: false,
    includeIfNull: false
  )


  final String? failurePolicy;



      /// MatchConditions is a list of conditions that must be met for a request to be sent to this webhook. Match conditions filter requests that have already been matched by the rules, namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests. There are a maximum of 64 match conditions allowed.  The exact matching logic is (in order):   1. If ANY matchCondition evaluates to FALSE, the webhook is skipped.   2. If ALL matchConditions evaluate to TRUE, the webhook is called.   3. If any matchCondition evaluates to an error (but none are FALSE):      - If failurePolicy=Fail, reject the request      - If failurePolicy=Ignore, the error is ignored and the webhook is skipped  This is an alpha feature and managed by the AdmissionWebhookMatchConditions feature gate.
  @JsonKey(
    
    name: r'matchConditions',
    required: false,
    includeIfNull: false
  )


  final List<V1MatchCondition>? matchConditions;



      /// matchPolicy defines how the \"rules\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.  Defaults to \"Equivalent\"
  @JsonKey(
    
    name: r'matchPolicy',
    required: false,
    includeIfNull: false
  )


  final String? matchPolicy;



      /// The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @JsonKey(
    
    name: r'namespaceSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? namespaceSelector;



  @JsonKey(
    
    name: r'objectSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? objectSelector;



      /// Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
  @JsonKey(
    
    name: r'rules',
    required: false,
    includeIfNull: false
  )


  final List<V1RuleWithOperations>? rules;



      /// SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
  @JsonKey(
    
    name: r'sideEffects',
    required: true,
    includeIfNull: false
  )


  final String sideEffects;



      /// TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
  @JsonKey(
    
    name: r'timeoutSeconds',
    required: false,
    includeIfNull: false
  )


  final int? timeoutSeconds;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ValidatingWebhook &&
     other.admissionReviewVersions == admissionReviewVersions &&
     other.clientConfig == clientConfig &&
     other.failurePolicy == failurePolicy &&
     other.matchConditions == matchConditions &&
     other.matchPolicy == matchPolicy &&
     other.name == name &&
     other.namespaceSelector == namespaceSelector &&
     other.objectSelector == objectSelector &&
     other.rules == rules &&
     other.sideEffects == sideEffects &&
     other.timeoutSeconds == timeoutSeconds;

  @override
  int get hashCode =>
    admissionReviewVersions.hashCode +
    clientConfig.hashCode +
    failurePolicy.hashCode +
    matchConditions.hashCode +
    matchPolicy.hashCode +
    name.hashCode +
    namespaceSelector.hashCode +
    objectSelector.hashCode +
    rules.hashCode +
    sideEffects.hashCode +
    timeoutSeconds.hashCode;

  factory V1ValidatingWebhook.fromJson(Map<String, dynamic> json) => _$V1ValidatingWebhookFromJson(json);

  Map<String, dynamic> toJson() => _$V1ValidatingWebhookToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

