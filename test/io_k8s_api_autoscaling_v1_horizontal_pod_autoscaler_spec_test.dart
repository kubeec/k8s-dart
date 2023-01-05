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

// tests for IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec
void main() {
  // final instance = IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec();

  group('test IoK8sApiAutoscalingV1HorizontalPodAutoscalerSpec', () {
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
