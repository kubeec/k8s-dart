import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiPolicyV1PodDisruptionBudgetStatus
void main() {
  final instance = IoK8sApiPolicyV1PodDisruptionBudgetStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiPolicyV1PodDisruptionBudgetStatus, () {
    // Conditions contain conditions for PDB. The disruption controller sets the DisruptionAllowed condition. The following are known values for the reason field (additional reasons could be added in the future): - SyncFailed: The controller encountered an error and wasn't able to compute               the number of allowed disruptions. Therefore no disruptions are               allowed and the status of the condition will be False. - InsufficientPods: The number of pods are either at or below the number                     required by the PodDisruptionBudget. No disruptions are                     allowed and the status of the condition will be False. - SufficientPods: There are more pods than required by the PodDisruptionBudget.                   The condition will be True, and the number of allowed                   disruptions are provided by the disruptionsAllowed property.
    // BuiltList<IoK8sApimachineryPkgApisMetaV1Condition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // current number of healthy pods
    // int currentHealthy
    test('to test the property `currentHealthy`', () async {
      // TODO
    });

    // minimum desired number of healthy pods
    // int desiredHealthy
    test('to test the property `desiredHealthy`', () async {
      // TODO
    });

    // DisruptedPods contains information about pods whose eviction was processed by the API server eviction subresource handler but has not yet been observed by the PodDisruptionBudget controller. A pod will be in this map from the time when the API server processed the eviction request to the time when the pod is seen by PDB controller as having been marked for deletion (or after a timeout). The key in the map is the name of the pod and the value is the time when the API server processed the eviction request. If the deletion didn't occur and a pod is still there it will be removed from the list automatically by PodDisruptionBudget controller after some time. If everything goes smooth this map should be empty for the most of the time. Large number of entries in the map may indicate problems with pod deletions.
    // BuiltMap<String, DateTime> disruptedPods
    test('to test the property `disruptedPods`', () async {
      // TODO
    });

    // Number of pod disruptions that are currently allowed.
    // int disruptionsAllowed
    test('to test the property `disruptionsAllowed`', () async {
      // TODO
    });

    // total number of pods counted by this disruption budget
    // int expectedPods
    test('to test the property `expectedPods`', () async {
      // TODO
    });

    // Most recent generation observed when updating this PDB status. DisruptionsAllowed and other status information is valid only if observedGeneration equals to PDB's object generation.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

  });
}
