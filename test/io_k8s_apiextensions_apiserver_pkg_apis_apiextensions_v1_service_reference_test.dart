import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1ServiceReference
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1ServiceReference, () {
    // name is the name of the service. Required
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // namespace is the namespace of the service. Required
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // path is an optional URL path at which the webhook will be contacted.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

  });
}
