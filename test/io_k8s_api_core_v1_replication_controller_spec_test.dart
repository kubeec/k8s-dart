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

// tests for IoK8sApiCoreV1ReplicationControllerSpec
void main() {
  // final instance = IoK8sApiCoreV1ReplicationControllerSpec();

  group('test IoK8sApiCoreV1ReplicationControllerSpec', () {
    // Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    // int minReadySeconds
    test('to test the property `minReadySeconds`', () async {
      // TODO
    });

    // Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

    // Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
    // Map<String, String> selector (default value: const {})
    test('to test the property `selector`', () async {
      // TODO
    });

    // IoK8sApiCoreV1PodTemplateSpec template
    test('to test the property `template`', () async {
      // TODO
    });


  });

}
