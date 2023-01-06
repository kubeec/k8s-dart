import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1NodeAffinity
void main() {
  final instance = IoK8sApiCoreV1NodeAffinityBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1NodeAffinity, () {
    // The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node matches the corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    // BuiltList<IoK8sApiCoreV1PreferredSchedulingTerm> preferredDuringSchedulingIgnoredDuringExecution
    test('to test the property `preferredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });

    // IoK8sApiCoreV1NodeSelector requiredDuringSchedulingIgnoredDuringExecution
    test('to test the property `requiredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });

  });
}
