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

// tests for IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus
void main() {
  // final instance = IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus();

  group('test IoK8sApiAutoscalingV2HorizontalPodAutoscalerStatus', () {
    // conditions is the set of conditions required for this autoscaler to scale its target, and indicates whether or not those conditions are met.
    // List<IoK8sApiAutoscalingV2HorizontalPodAutoscalerCondition> conditions (default value: const [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // currentMetrics is the last read state of the metrics used by this autoscaler.
    // List<IoK8sApiAutoscalingV2MetricStatus> currentMetrics (default value: const [])
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
