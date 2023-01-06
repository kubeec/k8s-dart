import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceConversion, () {
    // strategy specifies how custom resources are converted between versions. Allowed values are: - `None`: The converter only change the apiVersion and would not touch any other field in the custom resource. - `Webhook`: API Server will call to an external webhook to do the conversion. Additional information   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
    // String strategy
    test('to test the property `strategy`', () async {
      // TODO
    });

    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion webhook
    test('to test the property `webhook`', () async {
      // TODO
    });

  });
}
