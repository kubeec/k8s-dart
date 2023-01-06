import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR
void main() {
  final instance = IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR, () {
    // The CIDR with which clients can match their IP to figure out the server address that they should use.
    // String clientCIDR
    test('to test the property `clientCIDR`', () async {
      // TODO
    });

    // Address of this server, suitable for a client that matches the above CIDR. This can be a hostname, hostname:port, IP or IP:port.
    // String serverAddress
    test('to test the property `serverAddress`', () async {
      // TODO
    });

  });
}
