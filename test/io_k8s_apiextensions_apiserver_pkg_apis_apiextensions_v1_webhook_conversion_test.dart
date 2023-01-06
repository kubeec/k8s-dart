import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion, () {
    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig clientConfig
    test('to test the property `clientConfig`', () async {
      // TODO
    });

    // conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the Webhook expects. The API server will use the first version in the list which it supports. If none of the versions specified in this list are supported by API server, conversion will fail for the custom resource. If a persisted Webhook configuration specifies allowed versions and does not include any versions known to the API Server, calls to the webhook will fail.
    // BuiltList<String> conversionReviewVersions
    test('to test the property `conversionReviewVersions`', () async {
      // TODO
    });

  });
}
