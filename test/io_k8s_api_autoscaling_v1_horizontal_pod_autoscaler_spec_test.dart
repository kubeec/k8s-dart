import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec
void main() {
  final instance = IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec, () {
    // upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
    // int maxReplicas
    test('to test the property `maxReplicas`', () async {
      // TODO
    });

    // minReplicas is the lower limit for the number of replicas to which the autoscaler can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature gate HPAScaleToZero is enabled and at least one Object or External metric is configured.  Scaling is active as long as at least one metric value is available.
    // int minReplicas
    test('to test the property `minReplicas`', () async {
      // TODO
    });

    // IoK8sApiAutoscalingV1CrossVersionObjectReference scaleTargetRef
    test('to test the property `scaleTargetRef`', () async {
      // TODO
    });

    // target average CPU utilization (represented as a percentage of requested CPU) over all the pods; if not specified the default autoscaling policy will be used.
    // int targetCPUUtilizationPercentage
    test('to test the property `targetCPUUtilizationPercentage`', () async {
      // TODO
    });

  });
}
