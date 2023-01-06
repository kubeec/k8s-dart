import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1EndpointPort
void main() {
  final instance = IoK8sApiCoreV1EndpointPortBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1EndpointPort, () {
    // The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
    // String appProtocol
    test('to test the property `appProtocol`', () async {
      // TODO
    });

    // The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The port number of the endpoint.
    // int port
    test('to test the property `port`', () async {
      // TODO
    });

    // The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.  
    // String protocol
    test('to test the property `protocol`', () async {
      // TODO
    });

  });
}
