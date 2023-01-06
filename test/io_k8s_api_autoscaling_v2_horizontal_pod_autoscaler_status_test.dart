import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus
void main() {
  final instance = IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatusBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus, () {
    // conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
    // BuiltList<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition> conditions
    test('to test the property `conditions`', () async {
      // TODO
    });

    // currentMetrics is the last read state of the metrics used by this autoscaler.
    // BuiltList<IoK8sApiAutoscalingV2MetricStatus> currentMetrics
    test('to test the property `currentMetrics`', () async {
      // TODO
    });

    // currentReplicas is current number of replicas of pods managed by this autoscaler, as last seen by the autoscaler.
    // int currentReplicas
    test('to test the property `currentReplicas`', () async {
      // TODO
    });

    // desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as last calculated by the autoscaler.
    // int desiredReplicas
    test('to test the property `desiredReplicas`', () async {
      // TODO
    });

    // Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
    // DateTime lastScaleTime
    test('to test the property `lastScaleTime`', () async {
      // TODO
    });

    // observedGeneration is the most recent generation observed by this autoscaler.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

  });
}
