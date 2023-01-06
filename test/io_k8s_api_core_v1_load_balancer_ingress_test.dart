import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1LoadBalancerIngress
void main() {
  final instance = IoK8sApiCoreV1LoadBalancerIngressBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1LoadBalancerIngress, () {
    // Hostname is set for load-balancer ingress points that are DNS based (typically AWS load-balancers)
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // IP is set for load-balancer ingress points that are IP based (typically GCE or OpenStack load-balancers)
    // String ip
    test('to test the property `ip`', () async {
      // TODO
    });

    // Ports is a list of records of service ports If used, every port defined in the service should have an entry in it
    // BuiltList<IoK8sApiCoreV1PortStatus> ports
    test('to test the property `ports`', () async {
      // TODO
    });

  });
}
