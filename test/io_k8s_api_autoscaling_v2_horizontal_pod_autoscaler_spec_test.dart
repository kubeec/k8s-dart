import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec
void main() {
  final instance = IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV2HorizontalPodAutoscalerSpec, () {
    // IoK8sApiAutoscalingV2HorizontalPodAutoscalerBehavior behavior
    test('to test the property `behavior`', () async {
      // TODO
    });

    // maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up. It cannot be less that minReplicas.
    // int maxReplicas
    test('to test the property `maxReplicas`', () async {
      // TODO
    });

    // metrics contains the specifications for which to use to calculate the desired replica count (the maximum replica count across all metrics will be used).  The desired replica count is calculated multiplying the ratio between the target value and the current value by the current number of pods.  Ergo, metrics used must decrease as the pod count is increased, and vice-versa.  See the individual metric source types for more information about how each type of metric must respond. If not set, the default metric will be set to 80% average CPU utilization.
    // BuiltList<IoK8sApiAutoscalingV2MetricSpec> metrics
    test('to test the property `metrics`', () async {
      // TODO
    });

    // minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    // int minReplicas
    test('to test the property `minReplicas`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV2CrossVersionObjectReference scaleTargetRef
    test('to test the property `scaleTargetRef`', () async {
      // TODO
    });

  });
}
