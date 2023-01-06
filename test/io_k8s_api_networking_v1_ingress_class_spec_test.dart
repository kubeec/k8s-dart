import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1IngressClassSpec
void main() {
  final instance = IoK8sApiNetworkingV1IngressClassSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1IngressClassSpec, () {
    // Controller refers to the name of the controller that should handle this class. This allows for different \"flavors\" that are controlled by the same controller. For example, you may have different Parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. \"acme.io/ingress-controller\". This field is immutable.
    // String controller
    test('to test the property `controller`', () async {
      // TODO
    });

    // IoK8sApiNetworkingV1IngressClassParametersReference parameters
    test('to test the property `parameters`', () async {
      // TODO
    });

  });
}
