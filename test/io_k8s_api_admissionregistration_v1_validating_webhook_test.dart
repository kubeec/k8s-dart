//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiAdmissionregistrationV1ValidatingWebhook
void main() {
  // final instance = IoK8sApiAdmissionregistrationV1ValidatingWebhook();

  group('test IoK8sApiAdmissionregistrationV1ValidatingWebhook', () {
    // AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the Webhook expects. API server will try to use first version in the list which it supports. If none of the versions specified in this list supported by API server, validation will fail for this object. If a persisted webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail and be subject to the failure policy.
    // List<String> admissionReviewVersions (default value: const [])
    test('to test the property `admissionReviewVersions`', () async {
      // TODO
    });

    // IoK8sApiAdmissionregistrationV1WebhookClientConfig clientConfig
    test('to test the property `clientConfig`', () async {
      // TODO
    });

    // FailurePolicy defines how unrecognized errors from the admission endpoint are handled - allowed values are Ignore or Fail. Defaults to Fail.
    // String failurePolicy
    test('to test the property `failurePolicy`', () async {
      // TODO
    });

    // matchPolicy defines how the \"rules\" list is used to match incoming requests. Allowed values are \"Exact\" or \"Equivalent\".  - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the webhook.  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and \"rules\" only included `apiGroups:[\"apps\"], apiVersions:[\"v1\"], resources: [\"deployments\"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.  Defaults to \"Equivalent\"
    // String matchPolicy
    test('to test the property `matchPolicy`', () async {
      // TODO
    });

    // The name of the admission webhook. Name should be fully qualified, e.g., imagepolicy.kubernetes.io, where \"imagepolicy\" is the name of the webhook, and kubernetes.io is the name of the organization. Required.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector namespaceSelector
    test('to test the property `namespaceSelector`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1LabelSelector objectSelector
    test('to test the property `objectSelector`', () async {
      // TODO
    });

    // Rules describes what operations on what resources/subresources the webhook cares about. The webhook cares about an operation if it matches _any_ Rule. However, in order to prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the cluster in a state which cannot be recovered from without completely disabling the plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration objects.
    // List<IoK8sApiAdmissionregistrationV1RuleWithOperations> rules (default value: const [])
    test('to test the property `rules`', () async {
      // TODO
    });

    // SideEffects states whether this webhook has side effects. Acceptable values are: None, NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks with side effects MUST implement a reconciliation system, since a request may be rejected by a future step in the admission chain and the side effects therefore need to be undone. Requests with the dryRun attribute will be auto-rejected if they match a webhook with sideEffects == Unknown or Some.
    // String sideEffects
    test('to test the property `sideEffects`', () async {
      // TODO
    });

    // TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the webhook call will be ignored or the API call will fail based on the failure policy. The timeout value must be between 1 and 30 seconds. Default to 10 seconds.
    // int timeoutSeconds
    test('to test the property `timeoutSeconds`', () async {
      // TODO
    });


  });

}
