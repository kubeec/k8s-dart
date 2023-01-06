import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus
void main() {
  final instance = IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV1HorizontalPodAutoscalerStatus, () {
    // current average CPU utilization over all pods, represented as a percentage of requested CPU, e.g. 70 means that an average pod is using now 70% of its requested CPU.
    // int currentCPUUtilizationPercentage
    test('to test the property `currentCPUUtilizationPercentage`', () async {
      // TODO
    });

    // current number of replicas of pods managed by this autoscaler.
    // int currentReplicas
    test('to test the property `currentReplicas`', () async {
      // TODO
    });

    // desired number of replicas of pods managed by this autoscaler.
    // int desiredReplicas
    test('to test the property `desiredReplicas`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastScaleTime
    test('to test the property `lastScaleTime`', () async {
      // TODO
    });

    // most recent generation observed by this autoscaler.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

  });
}
