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

// tests for IoK8sApiAppsV1DaemonSetStatus
void main() {
  // final instance = IoK8sApiAppsV1DaemonSetStatus();

  group('test IoK8sApiAppsV1DaemonSetStatus', () {
    // Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    // int collisionCount
    test('to test the property `collisionCount`', () async {
      // TODO
    });

    // Represents the latest available observations of a DaemonSet's current state.
    // List<IoK8sApiAppsV1DaemonSetCondition> conditions (default value: const [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // The number of nodes that are running at least 1 daemon pod and are supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    // int currentNumberScheduled
    test('to test the property `currentNumberScheduled`', () async {
      // TODO
    });

    // The total number of nodes that should be running the daemon pod (including nodes correctly running the daemon pod). More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    // int desiredNumberScheduled
    test('to test the property `desiredNumberScheduled`', () async {
      // TODO
    });

    // The number of nodes that should be running the daemon pod and have one or more of the daemon pod running and available (ready for at least spec.minReadySeconds)
    // int numberAvailable
    test('to test the property `numberAvailable`', () async {
      // TODO
    });

    // The number of nodes that are running the daemon pod, but are not supposed to run the daemon pod. More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    // int numberMisscheduled
    test('to test the property `numberMisscheduled`', () async {
      // TODO
    });

    // numberReady is the number of nodes that should be running the daemon pod and have one or more of the daemon pod running with a Ready Condition.
    // int numberReady
    test('to test the property `numberReady`', () async {
      // TODO
    });

    // The number of nodes that should be running the daemon pod and have none of the daemon pod running and available (ready for at least spec.minReadySeconds)
    // int numberUnavailable
    test('to test the property `numberUnavailable`', () async {
      // TODO
    });

    // The most recent generation observed by the daemon set controller.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

    // The total number of nodes that are running updated daemon pod
    // int updatedNumberScheduled
    test('to test the property `updatedNumberScheduled`', () async {
      // TODO
    });


  });

}
