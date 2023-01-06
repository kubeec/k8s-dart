import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1DeploymentStatus
void main() {
  final instance = IoK8sApiAppsV1DeploymentStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1DeploymentStatus, () {
    // Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
    // int availableReplicas
    test('to test the property `availableReplicas`', () async {
      // TODO
    });

    // Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet.
    // int collisionCount
    test('to test the property `collisionCount`', () async {
      // TODO
    });

    // Represents the latest available observations of a deployment's current state.
    // BuiltList<IoK8sApiAppsV1DeploymentCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The generation observed by the deployment controller.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

    // readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
    // int readyReplicas
    test('to test the property `readyReplicas`', () async {
      // TODO
    });

    // Total number of non-terminated pods targeted by this deployment (their labels match the selector).
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

    // Total number of unavailable pods targeted by this deployment. This is the total number of pods that are still required for the deployment to have 100% available capacity. They may either be pods that are running but not yet available or pods that still have not been created.
    // int unavailableReplicas
    test('to test the property `unavailableReplicas`', () async {
      // TODO
    });

    // Total number of non-terminated pods targeted by this deployment that have the desired template spec.
    // int updatedReplicas
    test('to test the property `updatedReplicas`', () async {
      // TODO
    });

  });
}
