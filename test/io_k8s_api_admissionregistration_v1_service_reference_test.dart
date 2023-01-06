import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAdmissionregistrationV1ServiceReference
void main() {
  final instance = IoK8sApiAdmissionregistrationV1ServiceReferenceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAdmissionregistrationV1ServiceReference, () {
    // `name` is the name of the service. Required
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // `namespace` is the namespace of the service. Required
    // String namespace
    test('to test the property `namespace`', () async {
      // TODO
    });

    // `path` is an optional URL path which will be sent in any request to this service.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

  });
}
