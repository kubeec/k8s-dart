import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1IngressPortStatus
void main() {
  final instance = IoK8sApiNetworkingV1IngressPortStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1IngressPortStatus, () {
    // Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use   CamelCase names - cloud provider specific error values must have names that comply with the   format foo.example.com/CamelCase.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // Port is the port number of the ingress port.
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // Protocol is the protocol of the ingress port. The supported values are: \"TCP\", \"UDP\", \"SCTP\"  
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });

  });
}
