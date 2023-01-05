//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApiCoreV1PodAntiAffinity
void main() {
  // final instance = IoK8sApiCoreV1PodAntiAffinity();

  group('test IoK8sApiCoreV1PodAntiAffinity', () {
    // The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity expressions specified by this field, but it may choose a node that violates one or more of the expressions. The node that is most preferred is the one with the greatest sum of weights, i.e. for each node that meets all of the scheduling requirements (resource request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by iterating through the elements of this field and adding \"weight\" to the sum if the node has pods which matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most preferred.
    // List<IoK8sApiCoreV1WeightedPodAffinityTerm> preferredDuringSchedulingIgnoredDuringExecution (default value: const [])
    test('to test the property `preferredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });

    // If the anti-affinity requirements specified by this field are not met at scheduling time, the pod will not be scheduled onto the node. If the anti-affinity requirements specified by this field cease to be met at some point during pod execution (e.g. due to a pod label update), the system may or may not try to eventually evict the pod from its node. When there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are intersected, i.e. all terms must be satisfied.
    // List<IoK8sApiCoreV1PodAffinityTerm> requiredDuringSchedulingIgnoredDuringExecution (default value: const [])
    test('to test the property `requiredDuringSchedulingIgnoredDuringExecution`', () async {
      // TODO
    });


  });

}
