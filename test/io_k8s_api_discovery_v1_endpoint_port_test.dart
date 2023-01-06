import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiDiscoveryV1EndpointPort
void main() {
  final instance = IoK8sApiDiscoveryV1EndpointPortBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiDiscoveryV1EndpointPort, () {
    // The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and https://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
    // String appProtocol
    test('to test the property `appProtocol`', () async {
      // TODO
    });

    // The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
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
