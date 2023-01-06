import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ReplicationControllerStatus
void main() {
  final instance = IoK8sApiCoreV1ReplicationControllerStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ReplicationControllerStatus, () {
    // The number of available replicas (ready for at least minReadySeconds) for this replication controller.
    // int availableReplicas
    test('to test the property `availableReplicas`', () async {
      // TODO
    });

    // Represents the latest available observations of a replication controller's current state.
    // BuiltList<IoK8sApiCoreV1ReplicationControllerCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The number of pods that have labels matching the labels of the pod template of the replication controller.
    // int fullyLabeledReplicas
    test('to test the property `fullyLabeledReplicas`', () async {
      // TODO
    });

    // ObservedGeneration reflects the generation of the most recently observed replication controller.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

    // The number of ready replicas for this replication controller.
    // int readyReplicas
    test('to test the property `readyReplicas`', () async {
      // TODO
    });

    // Replicas is the most recently observed number of replicas. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

  });
}
