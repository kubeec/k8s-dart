import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1PodAffinity
void main() {
  final instance = IoK8sApiCoreV1PodAffinityBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1PodAffinity, () {
    // The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
    // BuiltList<IoK8sApiCoreV1WeightedPodAffinityTerm> preferredDuringSchedulingIgnoredDuringExecution
    test('to test the property `preferredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });

    // If the affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
    // BuiltList<IoK8sApiCoreV1PodAffinityTerm> requiredDuringSchedulingIgnoredDuringExecution
    test('to test the property `requiredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });

  });
}
