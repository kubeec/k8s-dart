import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiResourceV1alpha1PodSchedulingSpec
void main() {
  final instance = IoK8sApiResourceV1alpha1PodSchedulingSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiResourceV1alpha1PodSchedulingSpec, () {
    // PotentialNodes lists nodes where the Pod might be able to run.  The size of this field is limited to 128. This is large enough for many clusters. Larger clusters may need more attempts to find a node that suits all pending resources. This may get increased in the future, but not reduced.
    // BuiltList<String> potentialNodes
    test('to test the property `potentialNodes`', () async {
      // TODO
    });

    // SelectedNode is the node for which allocation of ResourceClaims that are referenced by the Pod and that use \"WaitForFirstConsumer\" allocation is to be attempted.
    // String selectedNode
    test('to test the property `selectedNode`', () async {
      // TODO
    });

  });
}
