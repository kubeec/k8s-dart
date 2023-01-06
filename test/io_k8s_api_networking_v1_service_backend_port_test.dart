import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1ServiceBackendPort
void main() {
  final instance = IoK8sApiNetworkingV1ServiceBackendPortBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1ServiceBackendPort, () {
    // Name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\".
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\".
    // int number
    test('to test the property `number`', () async {
      // TODO
    });

  });
}
