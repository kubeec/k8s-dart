import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1IngressLoadBalancerIngress
void main() {
  final instance = IoK8sApiNetworkingV1IngressLoadBalancerIngressBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1IngressLoadBalancerIngress, () {
    // Hostname is set for load-balancer ingress points that are DNS based.
    // String hostname
    test('to test the property `hostname`', () async {
      // TODO
    });

    // IP is set for load-balancer ingress points that are IP based.
    // String ip
    test('to test the property `ip`', () async {
      // TODO
    });

    // Ports provides information about the ports exposed by this LoadBalancer.
    // BuiltList<IoK8sApiNetworkingV1IngressPortStatus> ports
    test('to test the property `ports`', () async {
      // TODO
    });

  });
}
