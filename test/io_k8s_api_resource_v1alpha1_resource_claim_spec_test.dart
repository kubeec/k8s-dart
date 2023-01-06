import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1ResourceClaimSpec
void main() {
  final instance = IoK8sApiResourceV1alpha1ResourceClaimSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1ResourceClaimSpec, () {
    // Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default.
    // String allocationMode
    test('to test the property `allocationMode`', () async {
      // TODO
    });

    // IoK8sApiResourceV1alpha1ResourceClaimParametersReference parametersRef
    test('to test the property `parametersRef`', () async {
      // TODO
    });

    // ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
    // String resourceClassName
    test('to test the property `resourceClassName`', () async {
      // TODO
    });

  });
}
