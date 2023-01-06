import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1LoadBalancerStatus
void main() {
  final instance = IoK8sApiCoreV1LoadBalancerStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1LoadBalancerStatus, () {
    // Ingress is a list containing ingress points for the load-balancer. Traffic intended for the service should be sent to these ingress points.
    // BuiltList<IoK8sApiCoreV1LoadBalancerIngress> ingress
    test('to test the property `ingress`', () async {
      // TODO
    });

  });
}
