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

// tests for IoK8sApiCoreV1ContainerStatus
void main() {
  // final instance = IoK8sApiCoreV1ContainerStatus();

  group('test IoK8sApiCoreV1ContainerStatus', () {
    // Container's ID in the format '<type>://<container_id>'.
    // String containerID
    test('to test the property `containerID`', () async {
      // TODO
    });

    // The image the container is running. More info: https://kubernetes.io/docs/concepts/containers/images.
    // String image
    test('to test the property `image`', () async {
      // TODO
    });

    // ImageID of the container's image.
    // String imageID
    test('to test the property `imageID`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ContainerState lastState
    test('to test the property `lastState`', () async {
      // TODO
    });

    // This must be a DNS_LABEL. Each container in a pod must have a unique name. Cannot be updated.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Specifies whether the container has passed its readiness probe.
    // bool ready
    test('to test the property `ready`', () async {
      // TODO
    });

    // The number of times the container has been restarted.
    // int restartCount
    test('to test the property `restartCount`', () async {
      // TODO
    });

    // Specifies whether the container has passed its startup probe. Initialized as false, becomes true after startupProbe is considered successful. Resets to false when the container is restarted, or if kubelet loses state temporarily. Is always true when no startupProbe is defined.
    // bool started
    test('to test the property `started`', () async {
      // TODO
    });

    // IoK8sApiCoreV1ContainerState state
    test('to test the property `state`', () async {
      // TODO
    });


  });

}
