import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PortStatus
void main() {
  final instance = IoK8sApiCoreV1PortStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PortStatus, () {
    // Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use   CamelCase names - cloud provider specific error values must have names that comply with the   format foo.example.com/CamelCase.
    // String error
    test('to test the property `error`', () async {
      // TODO
    });

    // Port is the port number of the service port of which status is recorded here
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // Protocol is the protocol of the service port of which status is recorded here The supported values are: \"TCP\", \"UDP\", \"SCTP\"  
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });

  });
}
