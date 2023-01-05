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

// tests for IoK8sApiAppsV1StatefulSetStatus
void main() {
  // final instance = IoK8sApiAppsV1StatefulSetStatus();

  group('test IoK8sApiAppsV1StatefulSetStatus', () {
    // Total number of available pods (ready for at least minReadySeconds) targeted by this statefulset.
    // int availableReplicas
    test('to test the property `availableReplicas`', () async {
      // TODO
    });

    // collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ControllerRevision.
    // int collisionCount
    test('to test the property `collisionCount`', () async {
      // TODO
    });

    // Represents the latest available observations of a statefulset's current state.
    // List<IoK8sApiAppsV1StatefulSetCondition> conditions (default value: const [])
    test('to test the property `conditions`', () async {
      // TODO
    });

    // currentReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by currentRevision.
    // int currentReplicas
    test('to test the property `currentReplicas`', () async {
      // TODO
    });

    // currentRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [0,currentReplicas).
    // String currentRevision
    test('to test the property `currentRevision`', () async {
      // TODO
    });

    // observedGeneration is the most recent generation observed for this StatefulSet. It corresponds to the StatefulSet's generation, which is updated on mutation by the API Server.
    // int observedGeneration
    test('to test the property `observedGeneration`', () async {
      // TODO
    });

    // readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
    // int readyReplicas
    test('to test the property `readyReplicas`', () async {
      // TODO
    });

    // replicas is the number of Pods created by the StatefulSet controller.
    // int replicas
    test('to test the property `replicas`', () async {
      // TODO
    });

    // updateRevision, if not empty, indicates the version of the StatefulSet used to generate Pods in the sequence [replicas-updatedReplicas,replicas)
    // String updateRevision
    test('to test the property `updateRevision`', () async {
      // TODO
    });

    // updatedReplicas is the number of Pods created by the StatefulSet controller from the StatefulSet version indicated by updateRevision.
    // int updatedReplicas
    test('to test the property `updatedReplicas`', () async {
      // TODO
    });


  });

}
