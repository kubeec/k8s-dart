import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1ReplicaSetStatus
void main() {
  final instance = IoK8sApiAppsV1ReplicaSetStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1ReplicaSetStatus, () {
    // The number of available replicas (ready for at least minReadySeconds) for this replica set.
    // int availableReplicas
    test('to test the property `availableReplicas`', () async {
      // TODO
    });

    // Represents the latest available observations of a replica set's current state.
    // BuiltList<IoK8sApiAppsV1ReplicaSetCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The number of pods that have labels matching the labels of the pod template of the replicaset.
    // int fullyLabeledReplicas
    test('to test the property `fullyLabeledReplicas`', () async {
      // TODO
    });

    // ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

    // readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition.
    // int readyReplicas
    test('to test the property `readyReplicas`', () async {
      // TODO
    });

    // Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

  });
}
