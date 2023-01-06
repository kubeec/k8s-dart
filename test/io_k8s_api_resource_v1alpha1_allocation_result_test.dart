import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1AllocationResult
void main() {
  final instance = IoK8sApiResourceV1alpha1AllocationResultBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1AllocationResult, () {
    // IoK8sApiCoreV1NodeSelector availableOnNodes
    test('to test the property `availableOnNodes`', () async {
      // TODO
    });

    // ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.  The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
    // String resourceHandle
    test('to test the property `resourceHandle`', () async {
      // TODO
    });

    // Shareable determines whether the resource supports more than one consumer at a time.
    // bool shareable
    test('to test the property `shareable`', () async {
      // TODO
    });

  });
}
