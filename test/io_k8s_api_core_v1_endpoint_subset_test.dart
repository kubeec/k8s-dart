import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1EndpointSubset
void main() {
  final instance = IoK8sApiCoreV1EndpointSubsetBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1EndpointSubset, () {
    // IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    // BuiltList<IoK8sApiCoreV1EndpointAddress> addresses
    test('to test the property `addresses`', () async {
      // TODO
    });

    // IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    // BuiltList<IoK8sApiCoreV1EndpointAddress> notReadyAddresses
    test('to test the property `notReadyAddresses`', () async {
      // TODO
    });

    // Port numbers available on the related IP addresses.
    // BuiltList<IoK8sApiCoreV1EndpointPort> ports
    test('to test the property `ports`', () async {
      // TODO
    });

  });
}
